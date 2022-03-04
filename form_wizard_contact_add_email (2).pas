unit form_wizard_contact_add_email;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzTabs, Vcl.ExtCtrls, Vcl.StdCtrls,
  RzButton, RzRadChk, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, GridsEh, DBAxisGridsEh, DBGridEh, Data.DB, DBAccess, Uni, RzCmboBx,
  Vcl.Mask, RzEdit, RzLabel, Vcl.ComCtrls, RzDTP, MemDS;

type
  TfmWizardContactAddEmail = class(TForm)
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    TabSheet4: TRzTabSheet;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    Button1: TButton;
    btCancel: TButton;
    DBGridEh2: TDBGridEh;
    Panel3: TPanel;
    Button5: TButton;
    Button6: TButton;
    Panel4: TPanel;
    btApplayAndInsert: TButton;
    Button8: TButton;
    ContactList: TUniDataSource;
    Contacts: TUniDataSource;
    Button9: TButton;
    Label1: TLabel;
    edName_f: TRzEdit;
    Label2: TLabel;
    edName_i: TRzEdit;
    Label3: TLabel;
    edName_o: TRzEdit;
    Label4: TLabel;
    edProf: TRzEdit;
    Label5: TLabel;
    Label6: TLabel;
    edEmail: TRzEdit;
    Label7: TLabel;
    edUnit: TRzComboBox;
    edNameSave: TRzComboBox;
    Button3: TButton;
    Button2: TButton;
    Button10: TButton;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    edDateBorn: TRzDateTimePicker;
    Label8: TLabel;
    Units: TUniTable;
    Email: TUniDataSource;
    cbMardkDelete: TRzCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure edNameSaveDropDown(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure edUnitChange(Sender: TObject);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure btApplayAndInsertClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmWizardContactAddEmail: TfmWizardContactAddEmail;
  email_in: string;
implementation

{$R *.dfm}

uses datamodule, form_email, SystemUnit;

procedure TfmWizardContactAddEmail.Button10Click(Sender: TObject);
begin
  RzPageControl1.ActivePageIndex:=1;
end;

procedure TfmWizardContactAddEmail.Button1Click(Sender: TObject);
begin
  RzPageControl1.ActivePageIndex:=1;
end;

procedure TfmWizardContactAddEmail.Button2Click(Sender: TObject);
begin
  with ContactList.DataSet do begin
    edName_f.Text:=NormalCase(FieldByName('last_name').AsString);
    edName_i.Text:=NormalCase(FieldByName('first_name').AsString);
    edName_o.Text:=NormalCase(FieldByName('middle_name').AsString);
    edProf.Text:=NormalCase(FieldByName('profession').AsString);
    //edUnit.Value:=FieldByName('cont_unit').AsString;
    edNameSave.Text:=GetContactNameSave(2,edName_f.Text,edName_i.Text,edName_o.Text,edProf.Text);
    edDateBorn.Date:=FieldByName('data_rozhd').AsDateTime;
    edEmail.Text:=email_in;
    cbMardkDelete.Checked:=BitToBool(FieldByName('dismissed').AsInteger);
    RzPageControl1.ActivePageIndex:=2;
  end;
end;

procedure TfmWizardContactAddEmail.Button3Click(Sender: TObject);
begin
  with Contacts.DataSet do begin
    edName_f.Text:=Trim(FieldByName('cont_name_f').AsString);
    edName_i.Text:=Trim(FieldByName('cont_name_i').AsString);
    edName_o.Text:=Trim(FieldByName('cont_name_o').AsString);
    edProf.Text:=Trim(FieldByName('cont_prof').AsString);
    edUnit.Value:=FieldByName('cont_unit').AsString;
    edNameSave.Text:=Trim(FieldByName('cont_name_save').AsString);
    edDateBorn.Date:=FieldByName('cont_date_born').AsDateTime;
    if Trim(FieldByName('cont_email').AsString)<>'' then
      case Application.MessageBox(PChar('У данного контакта уже имеется почта. Что сделать:'+#13#10+
        'Да - добавить к текущщему электронному ящику.'+#13#10+
          'Нет - заменить текущий электронный ящик на выбранный.'),
            'Предупреждение',MB_ICONEXCLAMATION+MB_YESNOCANCEL) of
        IDYES:    edEmail.Text:=Trim(FieldByName('cont_email').AsString)+', '+email_in;
        IDNO:     edEmail.Text:=email_in;
        IDCANCEL: Exit;
      end;
    cbMardkDelete.Checked:=BitToBool(FieldByName('cont_is_delete').AsInteger);
    RzPageControl1.ActivePageIndex:=2;
  end;
end;

procedure TfmWizardContactAddEmail.btApplayAndInsertClick(Sender: TObject);
begin
  with Contacts.DataSet do begin
    Insert;
    FieldByName('cont_name_f').AsString:=Trim(edName_f.Text);
    FieldByName('cont_name_i').AsString:=Trim(edName_i.Text);
    FieldByName('cont_name_o').AsString:=Trim(edName_o.Text);
    FieldByName('cont_prof').AsString:=Trim(edProf.Text);
    FieldByName('cont_unit').AsString:=edUnit.Value;
    FieldByName('cont_name_save').AsString:=Trim(edNameSave.Text);
    FieldByName('cont_email').AsString:=Trim(edEmail.Text);
    FieldByName('cont_date_born').AsDateTime:=edDateBorn.Date;
    FieldByName('cont_is_delete').AsInteger:=BoolToBit(cbMardkDelete.Checked);
    FieldByName('cont_date_change').AsDateTime:=Now;
    FieldByName('cont_date_create').AsDateTime:=Now;

    ModuleDB.SYSP.Edit;
    ModuleDB.SYSP.FieldByName('date_last_change').AsDateTime:=Now;
    ModuleDB.SYSP.Post;

    Post;
  end;
  Close;
  //fmEmail.btRefershClick(Sender);
end;

procedure TfmWizardContactAddEmail.btCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfmWizardContactAddEmail.Button5Click(Sender: TObject);
begin
  RzPageControl1.ActivePageIndex:=2;
end;

procedure TfmWizardContactAddEmail.Button9Click(Sender: TObject);
begin
  RzPageControl1.ActivePageIndex:=0;
end;

procedure TfmWizardContactAddEmail.DBGridEh2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if TDBGridEh(Sender).DataSource.DataSet.FieldByName('dismissed').AsString='1' then
    Background:=RGB(255,235,235);
end;

procedure TfmWizardContactAddEmail.edNameSaveDropDown(Sender: TObject);
begin
  edNameSave.Items.Clear;
  edNameSave.Items.BeginUpdate;
  edNameSave.Add(
    GetContactNameSave(1,edName_f.Text,edName_i.Text,edName_o.Text,edProf.Text));
  edNameSave.Add(
    GetContactNameSave(2,edName_f.Text,edName_i.Text,edName_o.Text,edProf.Text));
  edNameSave.Add(
    GetContactNameSave(3,edName_f.Text,edName_i.Text,edName_o.Text,edProf.Text));
  edNameSave.Add(
    GetContactNameSave(4,edName_f.Text,edName_i.Text,edName_o.Text,edProf.Text));
  edNameSave.Items.EndUpdate;
end;

procedure TfmWizardContactAddEmail.edUnitChange(Sender: TObject);
begin
  if (edUnit.Text='') or (Trim(edName_f.Text)='') then
    btApplayAndInsert.Enabled:=false else
      btApplayAndInsert.Enabled:=true;
end;

procedure TfmWizardContactAddEmail.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TfmWizardContactAddEmail.FormCreate(Sender: TObject);
begin

  Units.Active:=true;
  FillCombobox(Units,edUnit,'unit_name_full','unit_id');

  email_in:=Email.DataSet.FieldByName('email_name').AsString+'@khm.zaural.ru';

  ModuleDB.ContactList.Close;
  ModuleDB.ContactList.ParamByName('dism').AsInteger:=2;
  ModuleDB.ContactList.Open;
  ModuleDB.memContactList.Refresh;
  ContactList.DataSet.First;
  Contacts.DataSet.First;
end;

procedure TfmWizardContactAddEmail.FormShow(Sender: TObject);
begin
  RzPageControl1.HideAllTabs;
end;

end.
