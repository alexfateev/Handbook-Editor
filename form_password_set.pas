unit form_password_set;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  RzEdit;

type
  TfmPassSet = class(TForm)
    Label1: TLabel;
    edPass: TRzEdit;
    Label2: TLabel;
    edPassConfirm: TRzEdit;
    Panel1: TPanel;
    btCancel: TButton;
    btSet: TButton;
    procedure btCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btSetClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPassSet: TfmPassSet;

implementation

{$R *.dfm}

uses SystemUnit, datamodule;

procedure TfmPassSet.btCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfmPassSet.btSetClick(Sender: TObject);
begin
  if edPass.Text=edPassConfirm.Text then begin
    ModuleDB.Users.Edit;
    ModuleDB.Users.FieldByName('user_password').AsString:=Encode(edPass.Text);
    ModuleDB.Users.Post;
    Application.MessageBox('Пароль успешно установлен.','Информация',MB_ICONINFORMATION);
    Close;
  end;
end;

procedure TfmPassSet.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

end.
