unit form_admin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzLstBox, RzTabs,
  Vcl.ComCtrls, RzTreeVw, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, RzButton, Vcl.ExtCtrls, RzPanel, GridsEh, DBAxisGridsEh, DBGridEh,
  RzRadChk, RzDBChk, Data.DB, DBAccess, Uni, RzStatus, RzDBStat;

type
  TfmAdmin = class(TForm)
    PageMain: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    GroupBox1: TGroupBox;
    DBGridGroups: TDBGridEh;
    RzPanel1: TRzPanel;
    btDelete: TRzButton;
    btEdit: TRzButton;
    btInsert: TRzButton;
    DBGridEh2: TDBGridEh;
    RzPanel2: TRzPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    RzPageControl1: TRzPageControl;
    TabSheet3: TRzTabSheet;
    RzDBCheckBox1: TRzDBCheckBox;
    RzDBCheckBox2: TRzDBCheckBox;
    RzDBCheckBox3: TRzDBCheckBox;
    RzDBCheckBox4: TRzDBCheckBox;
    RzDBCheckBox5: TRzDBCheckBox;
    RzDBCheckBox6: TRzDBCheckBox;
    RzDBCheckBox9: TRzDBCheckBox;
    TabSheet4: TRzTabSheet;
    RzDBCheckBox7: TRzDBCheckBox;
    TabSheet5: TRzTabSheet;
    TabSheet6: TRzTabSheet;
    RzDBCheckBox8: TRzDBCheckBox;
    srcAdmin: TUniDataSource;
    btCancel: TRzButton;
    RzSpacer1: TRzSpacer;
    btApplay: TRzButton;
    RzDBCheckBox10: TRzDBCheckBox;
    RzDBCheckBox11: TRzDBCheckBox;
    procedure btInsertClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button5Click(Sender: TObject);
    procedure srcAdminStateChange(Sender: TObject);
    procedure btApplayClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAdmin: TfmAdmin;
  Modified: boolean = false;
implementation

{$R *.dfm}

uses datamodule, SystemUnit, form_group_edit, form_user_edit, form_password_set;

procedure TfmAdmin.Button1Click(Sender: TObject);
begin
  if Application.MessageBox(PChar('Изменить статус пользователя: '+
    ModuleDB.Users.FieldByName('user_name').AsString+'?'),
      'Подтверждение',MB_ICONQUESTION+MB_YESNO)<>IDYES then Exit;
  ModuleDB.Users.Edit;
  if ModuleDB.Users.FieldByName('user_is_active').AsInteger=0 then
    ModuleDB.Users.FieldByName('user_is_active').AsInteger:=1 else
      ModuleDB.Users.FieldByName('user_is_active').AsInteger:=0;
  ModuleDB.Users.Post;
  ModuleDB.Users.Refresh;
end;

procedure TfmAdmin.Button2Click(Sender: TObject);
begin
  if Application.MessageBox(PChar('Удалить пользователя: '+
    ModuleDB.Users.FieldByName('user_name').AsString+'?'),
      'Подтверждение',MB_ICONQUESTION+MB_YESNO)<>IDYES then Exit;
  ModuleDB.Users.Delete;
end;

procedure TfmAdmin.Button3Click(Sender: TObject);
begin
  ModuleDB.Users.Edit;
  CreateForm(TfmUserEdit,'Редактирование пользователя');
end;

procedure TfmAdmin.Button4Click(Sender: TObject);
begin
  ModuleDB.Users.Insert;
  CreateForm(TfmUserEdit,'Новый пользователь');
end;

procedure TfmAdmin.Button5Click(Sender: TObject);
begin
  if ModuleDB.Users.RecordCount=0 then Exit;

  CreateForm(TfmPassSet,'Установка пароля');
end;

procedure TfmAdmin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if ModuleDB.Groups.State=dsEdit then ModuleDB.Groups.Post;
end;

procedure TfmAdmin.btCancelClick(Sender: TObject);
begin
  if srcAdmin.State=dsEdit then
    srcAdmin.DataSet.Cancel;
end;

procedure TfmAdmin.btDeleteClick(Sender: TObject);
begin
  if Application.MessageBox(PChar('Удалить группу: '+
    ModuleDB.Groups.FieldByName('group_name').AsString+'?'),
      'Подтверждение',MB_ICONQUESTION+MB_YESNO)<>IDYES then Exit;
  ModuleDB.Groups.Delete;
end;

procedure TfmAdmin.btEditClick(Sender: TObject);
begin
  ModuleDB.Groups.Edit;
  CreateForm(TfmGroupEdit,'Редактирование группы');
end;

procedure TfmAdmin.btInsertClick(Sender: TObject);
begin
  ModuleDB.Groups.Insert;
  CreateForm(TfmGroupEdit,'Новая группа');
end;

procedure TfmAdmin.btApplayClick(Sender: TObject);
begin
  if srcAdmin.State=dsEdit then
    srcAdmin.DataSet.Post;
end;

procedure TfmAdmin.srcAdminStateChange(Sender: TObject);
var
  res: boolean;
begin
  if srcAdmin.State=dsEdit then
    res:=true else
      res:=false;
  DBGridGroups.Enabled:= not res;
  btInsert.Enabled:= not res;
  btEdit.Enabled:= not res;
  btDelete.Enabled:=not res;
  btCancel.Enabled:=res;
  btApplay.Enabled:=res;
end;

end.
