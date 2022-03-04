unit form_email_exceptions;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TfmEmailExceptions = class(TForm)
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    Button1: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmEmailExceptions: TfmEmailExceptions;

implementation

{$R *.dfm}

uses form_email;

procedure TfmEmailExceptions.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TfmEmailExceptions.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

end.
