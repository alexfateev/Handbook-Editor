unit form_user_edit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, RzEdit,
  RzDBEdit, Vcl.ExtCtrls, RzCmboBx, Data.DB;

type
  TfmUserEdit = class(TForm)
    Panel1: TPanel;
    btOk: TButton;
    btCancel: TButton;
    edName: TRzDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    edDescription: TRzDBEdit;
    Label3: TLabel;
    edGroup: TRzComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edNameChange(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmUserEdit: TfmUserEdit;

implementation

{$R *.dfm}

uses datamodule;

procedure TfmUserEdit.btCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfmUserEdit.btOkClick(Sender: TObject);
begin
  ModuleDB.Users.FieldByName('user_group').AsString:=edGroup.Value;
  ModuleDB.Users.Post;
  ModuleDB.Users.Refresh;
  Close;
end;

procedure TfmUserEdit.edNameChange(Sender: TObject);
begin
  if Trim(edName.Text)='' then
    btOk.Enabled:=false else
      btOk.Enabled:=true;
end;

procedure TfmUserEdit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
  ModuleDB.Users.Cancel;
end;

procedure TfmUserEdit.FormCreate(Sender: TObject);
begin
  with ModuleDB do begin
    edGroup.Items.Clear;
    edGroup.Items.BeginUpdate;
    Groups.First;
    while not Groups.Eof do begin
      edGroup.AddItemValue(Groups.FieldByName('group_name').AsString,
        Groups.FieldByName('group_id').AsString);
      Groups.Next;
    end;
    edGroup.Items.EndUpdate;

  // Если редактируем запись
  if Users.State=dsEdit then begin
    edGroup.Value:=Users.FieldByName('user_group').AsString;
  end;

  end;
end;

procedure TfmUserEdit.FormShow(Sender: TObject);
begin
  edName.SetFocus;
  edNameChange(Sender);
end;

end.
