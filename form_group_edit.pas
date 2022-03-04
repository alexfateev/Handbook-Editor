unit form_group_edit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  RzEdit, RzDBEdit;

type
  TfmGroupEdit = class(TForm)
    Panel1: TPanel;
    btOk: TButton;
    btCancel: TButton;
    Label1: TLabel;
    edName: TRzDBEdit;
    Label2: TLabel;
    edDescription: TRzDBEdit;
    procedure btCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edNameChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmGroupEdit: TfmGroupEdit;

implementation

{$R *.dfm}

uses datamodule;

procedure TfmGroupEdit.btOkClick(Sender: TObject);
begin
  ModuleDB.Groups.Post;
  Close;
end;

procedure TfmGroupEdit.edNameChange(Sender: TObject);
begin
  if Trim(edName.Text)='' then
    btOk.Enabled:=false else
      btOk.Enabled:=true;
end;

procedure TfmGroupEdit.btCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfmGroupEdit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
  ModuleDB.Groups.Cancel;
end;

procedure TfmGroupEdit.FormShow(Sender: TObject);
begin
  edName.SetFocus;
  edNameChange(Sender);
end;

end.
