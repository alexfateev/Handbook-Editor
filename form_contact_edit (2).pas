unit form_contact_edit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, RzDBEdit,
  RzButton, Vcl.ExtCtrls, RzPanel, RzTabs, RzDBCmbo, RzCmboBx, Vcl.Mask, RzEdit,
  RzRadChk, RzDBChk, Vcl.ComCtrls, RzDTP, RzDBDTP, Data.DB, MemDS, DBAccess, Uni,
  RzLabel, RzDBLbl;

type
  TfmContactEdit = class(TForm)
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    TabSheet3: TRzTabSheet;
    RzPanel1: TRzPanel;
    btOk: TRzButton;
    btCancel: TRzButton;
    edNote: TRzDBMemo;
    Label1: TLabel;
    edName_f: TRzDBEdit;
    Label2: TLabel;
    edName_i: TRzDBEdit;
    Label3: TLabel;
    edName_o: TRzDBEdit;
    Label4: TLabel;
    edProf: TRzDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    edUnit: TRzComboBox;
    edNameSave: TRzDBComboBox;
    Label7: TLabel;
    edDateBorn: TRzDBDateTimePicker;
    RzDBCheckBox1: TRzDBCheckBox;
    Label8: TLabel;
    edEmail: TRzDBEdit;
    edEmailName: TRzDBComboBox;
    Label9: TLabel;
    Label10: TLabel;
    edTelWork: TRzDBEdit;
    edTelWork2: TRzDBEdit;
    Label11: TLabel;
    edTelMobile: TRzDBEdit;
    Label12: TLabel;
    edTelFax: TRzDBEdit;
    Label13: TLabel;
    Units: TUniTable;
    RzDBLabel1: TRzDBLabel;
    procedure edNameSaveChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edNameSaveDropDown(Sender: TObject);
    procedure edEmailNameDropDown(Sender: TObject);
    procedure edEmailChange(Sender: TObject);
    procedure RzPageControl1Change(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmContactEdit: TfmContactEdit;
  name_short, name_full: string;

implementation

{$R *.dfm}

uses form_handbook, datamodule;

procedure TfmContactEdit.btCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfmContactEdit.btOkClick(Sender: TObject);
begin
  edName_f.DataSource.DataSet.FieldByName('cont_unit').AsString:=edUnit.Value;
  edName_f.DataSource.DataSet.Post;

  ModuleDB.SYSP.Edit;
  ModuleDB.SYSP.FieldByName('date_last_change').AsDateTime:=Now;
  ModuleDB.SYSP.Post;

  Close;
end;

procedure TfmContactEdit.edEmailChange(Sender: TObject);
begin
  edEmailName.Text:=edEmail.Text;
end;

procedure TfmContactEdit.edEmailNameDropDown(Sender: TObject);
begin
  edEmailName.Items.Clear;
  edEmailName.Items.BeginUpdate;

  if Trim(name_short)=Trim(name_full) then begin
    if Trim(edEmail.Text)<>'' then
      edEmailName.Add(Trim(edEmail.Text));
    if (Trim(name_short)<>'') and (Trim(edEmail.Text)<>'') then
      edEmailName.Add(Trim(name_short)+' <'+Trim(edEmail.Text)+'>');
  end else begin
    if Trim(edEmail.Text)<>'' then
      edEmailName.Add(Trim(edEmail.Text));
    if (Trim(name_short)<>'') and (Trim(edEmail.Text)<>'') then
      edEmailName.Add(Trim(name_short)+' <'+Trim(edEmail.Text)+'>');
    if (Trim(name_full)<>'') and (Trim(edEmail.Text)<>'') then
      edEmailName.Add(Trim(name_full)+' <'+Trim(edEmail.Text)+'>');
  end;
  edEmailName.Items.EndUpdate;
end;

procedure TfmContactEdit.edNameSaveChange(Sender: TObject);
begin
  if (Trim(edNameSave.Text)='')or(edUnit.Text=edUnit.Value) then
    btOk.Enabled:=false else
      btOk.Enabled:=true;
end;

procedure TfmContactEdit.edNameSaveDropDown(Sender: TObject);
begin
  edNameSave.Items.Clear;
  edNameSave.Items.BeginUpdate;

  if Trim(edName_f.Text)<>'' then begin
    name_short:=Trim(edName_f.Text)+' ';
    name_full:=Trim(edName_f.Text);
  end;
  if Trim(edName_i.Text)<>'' then begin
    name_short:=name_short + Trim(edName_i.Text)[1]+'.';
    name_full:=name_full +' '+ Trim(edName_i.Text);
  end;
  if Trim(edName_o.Text)<>'' then begin
    name_short:=name_short + Trim(edName_o.Text)[1]+'.';
    name_full:=name_full +' '+ Trim(edName_o.Text);
  end;

  if Trim(name_short)=Trim(name_full) then begin
    if Trim(name_short)<>'' then
      edNameSave.Add(Trim(name_short));
    if (Trim(name_short)<>'')and(Trim(edProf.Text)<>'') then
      edNameSave.Add(Trim(name_short)+', '+Trim(edProf.Text));
  end else begin
    if Trim(name_short)<>'' then
      edNameSave.Add(Trim(name_short));
    if (Trim(name_short)<>'')and(Trim(edProf.Text)<>'') then
      edNameSave.Add(Trim(name_short)+', '+Trim(edProf.Text));
    if Trim(name_full)<>'' then
      edNameSave.Add(Trim(name_full));
    if (Trim(name_full)<>'')and(Trim(edProf.Text)<>'') then
      edNameSave.Add(Trim(name_full)+', '+Trim(edProf.Text));
  end;

  edNameSave.Items.EndUpdate;
end;

procedure TfmContactEdit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
  edName_f.DataSource.DataSet.Cancel;
end;

procedure TfmContactEdit.FormCreate(Sender: TObject);
begin
  Units.Active:=true;

  edUnit.Items.Clear;
  edUnit.Items.BeginUpdate;
  Units.Refresh;
  Units.First;
  while not Units.Eof do begin
    edUnit.AddItemValue(Units.FieldByName('unit_name_short').AsString,
      Units.FieldByName('unit_id').AsString);
    Units.Next;
  end;
  edUnit.Items.EndUpdate;

  // Режим довабления
  if edName_f.DataSource.DataSet.State=dsInsert then
    edUnit.Value:=RzDBLabel1.DataSource.DataSet.FieldByName('unit_id').AsString;

  // Режимредактирование
  if edName_f.DataSource.DataSet.State=dsEdit then
    edUnit.Value:=edName_f.DataSource.DataSet.FieldByName('cont_unit').AsString;

end;

procedure TfmContactEdit.FormShow(Sender: TObject);
begin
  edName_f.SetFocus;
  edNameSaveChange(Sender);
end;

procedure TfmContactEdit.RzPageControl1Change(Sender: TObject);
begin
  edNameSaveDropDown(Sender);
end;

end.
