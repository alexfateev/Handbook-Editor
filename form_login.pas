unit form_login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, RzEdit, RzCmboBx,
  RzButton, RzRadChk;

type
  TfmLogin = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edUser: TRzComboBox;
    edPass: TRzEdit;
    btOk: TButton;
    Label3: TLabel;
    RzCheckBox1: TRzCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edUserChange(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmLogin: TfmLogin;
  Login: boolean = false;

implementation

{$R *.dfm}

uses datamodule, form_main, SystemUnit;

procedure TfmLogin.btOkClick(Sender: TObject);
begin
  ModuleDB.Users.Refresh;
  ModuleDB.Users.Locate('user_id',edUser.Value,[]);

  if Par_CheckPassLogin then begin

    if Trim(edPass.Text)='' then begin
      Application.MessageBox('Пароль не может быть пустым.','Предупреждение',MB_ICONEXCLAMATION);
      Exit;
    end;

    if ModuleDB.Users.FieldByName('user_password').AsString<>Encode(edPass.Text) then begin
      Application.MessageBox('Неверный логин или пароль.','Предупреждение',MB_ICONEXCLAMATION);
      edPass.Clear;
      edPass.SetFocus;
      Exit;
    end;
  end;

  CurrUserId:=StrToInt(edUser.Value);
  ModuleDB.RegFile.WriteString('Authorization','User',IntToStr(CurrUserId));
  Login:=true;
  fmMain.BuildInterface;
  Close;
end;

procedure TfmLogin.edUserChange(Sender: TObject);
begin
  if edUser.Text<>'' then
    btOk.Enabled:=true else
      btOk.Enabled:=false;
  if ModuleDB.Users.Locate('user_id',edUser.Value,[]) then
    if ModuleDB.Users.FieldByName('user_password').AsString='' then
      Label3.Visible:=true else
        Label3.Visible:=false;
  if edUser.Text='' then
    Label3.Visible:=false;
end;

procedure TfmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
  if not Login then
    fmMain.Close;
end;

procedure TfmLogin.FormCreate(Sender: TObject);
begin
  with ModuleDB do begin
    edUser.Items.Clear;
    edUser.Items.BeginUpdate;
    Users.First;
    while not Users.Eof do begin
      edUser.AddItemValue(Users.FieldByName('user_name').AsString,
        Users.FieldByName('user_id').AsString);
      Users.Next;
    end;
    edUser.Items.EndUpdate;
  end;

  edUser.Value:=ModuleDB.RegFile.ReadString('Authorization','User','0');
  btOk.Default:=true;
end;

procedure TfmLogin.FormShow(Sender: TObject);
begin
  edPass.Clear;
  edUserChange(Sender);
  edPass.SetFocus;
end;

end.
