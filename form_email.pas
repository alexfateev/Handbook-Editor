unit form_email;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.ExtCtrls, RzPanel, GridsEh, DBAxisGridsEh,
  DBGridEh, MemTableDataEh, Data.DB, DataDriverEh, MemTableEh, DBAccess, Uni,
  MemDS, RzSplit, RzButton, RzStatus, RzPrgres, Vcl.Menus;

type
  TfmEmail = class(TForm)
    RzPanel1: TRzPanel;
    srcContacts: TUniDataSource;
    memContacts: TMemTableEh;
    setContacts: TDataSetDriverEh;
    RzSizePanel1: TRzSizePanel;
    Contacts: TUniQuery;
    OpenDialog: TOpenDialog;
    Email_Import: TUniQuery;
    setEmail_Import: TDataSetDriverEh;
    memEmail_Import: TMemTableEh;
    srcEmail_Import: TUniDataSource;
    SQL: TUniQuery;
    btRefersh: TRzButton;
    RzPanel3: TRzPanel;
    DBGridContact: TDBGridEh;
    RzStatusBar1: TRzStatusBar;
    fsCAll: TRzFieldStatus;
    fsCIn: TRzFieldStatus;
    fsCOut: TRzFieldStatus;
    fscErr: TRzFieldStatus;
    fsCEmail: TRzFieldStatus;
    RzPanel2: TRzPanel;
    DBGridEmail: TDBGridEh;
    RzStatusBar2: TRzStatusBar;
    fsUAll: TRzFieldStatus;
    fsUOut: TRzFieldStatus;
    fsUIn: TRzFieldStatus;
    C: TUniTable;
    E: TUniTable;
    fscNonActive: TRzFieldStatus;
    pmEmailExceptions: TPopupMenu;
    pmEmail_Import: TPopupMenu;
    RzMenuButton1: TRzMenuButton;
    N1: TMenuItem;
    N2: TMenuItem;
    Email_Import_Exceptions: TUniTable;
    N3: TMenuItem;
    srcEmail_import_exceptions: TUniDataSource;
    miWizard: TMenuItem;
    procedure UpdateStatus;
    procedure FormCreate(Sender: TObject);
    procedure btRefershClick(Sender: TObject);
    procedure DBGridContactGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEmailGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure DBGridContactListGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure N1Click(Sender: TObject);
    procedure miWizardClick(Sender: TObject);
    procedure pmEmail_ImportPopup(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmEmail: TfmEmail;
  s_CAll, s_CEmail, s_CIn, s_COut, s_CErr, s_CNonActive: integer;
  s_UAll, s_UIn, s_UOut: integer;

implementation

{$R *.dfm}

uses datamodule, SystemUnit, form_email_exceptions,
  form_wizard_contact_add_email;

procedure TfmEmail.DBGridContactGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if TDBGridEh(Sender).DataSource.DataSet.FieldByName('cont_in_list').AsString='1' then
    Background:=clMoneyGreen;

  if (TDBGridEh(Sender).DataSource.DataSet.FieldByName('cont_in_list').AsString='0')and
    (Trim(TDBGridEh(Sender).DataSource.DataSet.FieldByName('cont_email').AsString) <> '') then
    Background:=clRed;

  if (TDBGridEh(Sender).DataSource.DataSet.FieldByName('cont_is_delete').AsInteger=1) and
    (Trim(TDBGridEh(Sender).DataSource.DataSet.FieldByName('cont_email').AsString)<>'') then
      Background:=clYellow;

end;

procedure TfmEmail.DBGridContactListGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if TDBGridEh(Sender).DataSource.DataSet.FieldByName('dismissed').AsString='1' then
    Background:=RGB(255,235,235);
end;

procedure TfmEmail.DBGridEmailGetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if TDBGridEh(Sender).DataSource.DataSet.FieldByName('email_in_list').AsString='1' then
    Background:=clMoneyGreen;
end;

procedure TfmEmail.FormCreate(Sender: TObject);
begin
  Contacts.Active:=true;
  memContacts.Active:=true;
  Email_Import.Active:=true;
  memEmail_Import.Active:=true;
  Email_Import_Exceptions.Active:=true;
  UpdateStatus;
end;

procedure TfmEmail.N1Click(Sender: TObject);
begin
  CreateForm(TfmEmailExceptions,'Исключения при добвалении');
end;

procedure TfmEmail.N2Click(Sender: TObject);
var
  max, inrec, i: integer;
  email, name:string;
  buf: string;
  f:TStrings; //Переменная типа объект TStringList.
begin
  inrec:=0;
  if not OpenDialog.Execute then Exit;

  SQL.SQL.Text:='Delete from email_import';
  SQL.Execute;
  Email_Import.Refresh;
  f:= TStringList.Create();
  f.LoadFromFile(OpenDialog.FileName);// Загрузка текстового файла f.Strings[0]; II Здесь находится первая строка файла f.Strings[1]; // Здесь находится вторая строка файла
  max:=f.Count;
  for i := 0 to f.Count-1 do
    begin
      buf:=f.Strings[i];
      if Length(Trim(buf))=0 then Continue;
      if (Length(Trim(buf))<>0) and (Trim(buf[1])='#') then Continue;
      email:=Copy(buf,0,pos(':',buf)-1);
      name:=copy(buf,pos('::0:0:',buf)+6,pos(':/',buf)-pos('::0:0:',buf)-6);
      if copy(name,length(name)-2,3)=':no' then
         Delete(name,length(name)-2,3);
      if Email_Import_Exceptions.Locate('email_except_name',email,[]) then Continue;
      //mainProgressStatus.Percent:=Round(i*100/max);
      inc(inrec);
      Email_Import.Insert;
      Email_Import.FieldByName('email_name').AsString:=email;
      Email_Import.FieldByName('email_name_full').AsString:=name;
      Email_Import.Post;
    end;
  memEmail_Import.Refresh;
  f.Free;

  btRefershClick(Sender);
  ShowMessage('Добавлено записей: '+IntToStr(inrec)+#10+'Пропущено: '+IntToStr(max-inrec)+#10+'Всего: '+IntToStr(max));
end;

procedure TfmEmail.N3Click(Sender: TObject);
var
  user, email_: string;
  email_curr: string;
begin
    user:=memContacts.FieldByName('cont_name_save').AsString;
    email_:=memEmail_Import.FieldByName('email_name').AsString+'@khm.zaural.ru';
    email_curr:=memContacts.FieldByName('cont_email').AsString;


          //edEmail.Text:=Trim(FieldByName('cont_email').AsString)+', '+email_in else
            //edEmail.Text:=email_in;

    if Trim(email_curr)<>'' then begin
      case Application.MessageBox(PChar('У данного контакта уже имеется почта. Что сделать:'+#13#10+
          'Да - добавить к текущщему электронному ящику.'+#13#10+
            'Нет - заменить текущий электронный ящик на выбранный.'),
              'Предупреждение',MB_ICONEXCLAMATION+MB_YESNOCANCEL) of
        IDYES:    email_:=email_curr+', '+email_;
        IDNO:     email_:=email_;
        IDCANCEL: Exit;
      end;
      memContacts.Edit;
      memContacts.FieldByName('cont_email').AsString:=email_;
      memContacts.Post;
      Exit;
    end;


    if Application.MessageBox(PChar('Установить для контакта: "'+user+'"'+#10+
        'Электронный ящик: "'+email_+'"'),'Подтверждение',MB_ICONQUESTION+MB_YESNO)=IDYES then begin
      memContacts.Edit;
      memContacts.FieldByName('cont_email').AsString:=email_;
      memContacts.FieldByName('cont_in_list').Asstring:='1';
      memContacts.Post;
      memEmail_Import.Edit;
      memEmail_Import.FieldByName('email_in_list').AsString:='1';
      memEmail_Import.Post;
    end;
end;

procedure TfmEmail.pmEmail_ImportPopup(Sender: TObject);
begin
  miWizard.Visible:=CheckAccess(CurrUserId,'email_wizard_add',false)and(IBConnect);
end;

procedure TfmEmail.miWizardClick(Sender: TObject);
begin
  CreateForm(TfmWizardContactAddEmail,'Мастер добавления контакта');
end;

procedure TfmEmail.btRefershClick(Sender: TObject);
var
  in_list: byte;
  tmp: string;
  //no, max: integer;
begin

    DBGridContact.DataSource:=nil;
    DBGridEmail.DataSource:=nil;

    memContacts.Filtered:=false;
    memEmail_Import.Filtered:=false;

    Contacts.Refresh;
    Email_Import.Refresh;

    {max:=Contacts.RecordCount+Email_Import.RecordCount;
    no:=0;}

    Contacts.First;
    //mainProgressStatus.Percent:=0;
    while not Contacts.Eof do begin
        //inc(no);
        //RzProgressBar1.Percent:=Round(no*100/max);
        tmp:=Trim(Contacts.FieldByName('cont_email').AsString)+',';
        in_list:=0;
        while pos('@',tmp)<>0 do begin
          if Email_Import.Locate('email_name',Trim(Copy(tmp,1,Pos('@',tmp)-1)),[loCaseInsensitive]) then begin
            in_list:=1;
            Email_Import.Edit;
            Email_Import.FieldByName('email_in_list').AsInteger:=in_list;
            Email_Import.Post;
          end else in_list:=0;

          Delete(tmp,1,Pos(',',tmp));
        end; // pos('@',tmp)<>0

        Contacts.Edit;
        Contacts.FieldByName('cont_in_list').AsInteger:=in_list;
        Contacts.Post;
        Contacts.Next;

    end; // not Contacts.Eof

    memContacts.Refresh;
    memEmail_Import.Refresh;

    DBGridContact.DataSource:=srcContacts;
    DBGridEmail.DataSource:=srcEmail_Import;

    UpdateStatus;

end;

procedure TfmEmail.UpdateStatus;
var
  tmp: string;
begin
  s_CAll:=0; s_CEmail:=0; s_CIn:=0; s_COut:=0; s_CErr:=0; s_CNonActive:=0;
  s_UAll:=0; s_Uin:=0; s_UOut:=0;

  C.Active:=true;
  C.Refresh;
    s_CAll:=Contacts.RecordCount;
  C.First;
  while not C.Eof do begin

    // Считаем сколько в списке
    if C.FieldByName('cont_in_list').AsInteger=1 then
      Inc(s_CIn);

    // Считаем сколько пользователей (электронной почты)
    if Trim(C.FieldByName('cont_email').AsString)<>'' then begin
      tmp:=Trim(C.FieldByName('cont_email').AsString)+',';
      while pos('@',tmp)<>0 do begin
        Inc(s_CEmail);
        Delete(tmp,1,Pos(',',tmp));
      end; // pos('@',tmp)<>0
    end; // if

    // Считаем сколько ошибочных
    if (C.FieldByName('cont_in_list').AsInteger=0) and (Trim(C.FieldByName('cont_email').AsString)<>'') then
      Inc(s_CErr);

    // Считаем неактивных (помеченных на удаление)
    if (C.FieldByName('cont_is_delete').AsInteger=1) and (Trim(C.FieldByName('cont_email').AsString)<>'') then
      Inc(s_CNonActive);

    C.Next;
  end;

  fsCAll.Caption:=IntToStr(s_CAll);
  fsCEmail.Caption:=IntToStr(s_CEmail);
  fsCIn.Caption:=IntToStr(s_CIn);
  fsCOut.Caption:=IntToStr(s_CAll-s_CIn);
  fscErr.Caption:=IntToStr(s_CErr);
  fscNonActive.Caption:=IntToStr(s_CNonActive);

  C.Active:=false;

  E.Active:=true;
  E.Refresh;
  s_UAll:=E.RecordCount;
  E.First;
  while not E.Eof do begin
    if E.FieldByName('email_in_list').AsInteger=1 then
      Inc(s_UIn);
    E.Next;
  end;

  fsUAll.Caption:=IntToStr(s_UAll);
  fsUIn.Caption:=IntToStr(s_UIn);
  fsUOut.Caption:=IntToStr(s_UAll-s_UIn);

  E.Active:=false;

end;

end.
