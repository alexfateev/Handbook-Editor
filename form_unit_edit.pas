unit form_unit_edit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, RzEdit,
  RzDBEdit, Vcl.ExtCtrls, Data.DB;

type
  TfmUnitEdit = class(TForm)
    Panel1: TPanel;
    btOk: TButton;
    btCancel: TButton;
    edNameFull: TRzDBEdit;
    Label2: TLabel;
    edName: TRzDBEdit;
    Label1: TLabel;
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
  fmUnitEdit: TfmUnitEdit;

implementation

{$R *.dfm}

uses form_handbook, datamodule, SystemUnit;

procedure TfmUnitEdit.btCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfmUnitEdit.btOkClick(Sender: TObject);
begin
  if Trim(edNameFull.Text)='' then
    edNameFull.Text:=edName.Text;
  edName.DataSource.DataSet.Post;
  Close;
end;

procedure TfmUnitEdit.edNameChange(Sender: TObject);
begin
  if Trim(edName.Text)='' then
    btOk.Enabled:=false else
      btOk.Enabled:=true;
end;

procedure TfmUnitEdit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
  if edName.DataSource.State=dsEdit then
    edName.DataSource.DataSet.Cancel;

end;

procedure TfmUnitEdit.FormShow(Sender: TObject);
begin
  edName.SetFocus;
  edNameChange(Sender);
end;

end.
