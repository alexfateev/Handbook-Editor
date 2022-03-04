unit form_contact_update;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, RzEdit,
  RzButton, RzRadChk, RzDBChk, Vcl.ExtCtrls, Vcl.ComCtrls, RzDTP, RzCmboBx,
  RzLabel, RzDBLbl;

type
  TfmContactUpdate = class(TForm)
    edName_f: TRzEdit;
    edName_i: TRzEdit;
    edName_o: TRzEdit;
    edProf: TRzEdit;
    edDateBorn: TRzDateTimePicker;
    Panel1: TPanel;
    btUpdate: TButton;
    btCancel: TButton;
    cbName_f: TRzCheckBox;
    cbName_i: TRzCheckBox;
    cbName_o: TRzCheckBox;
    cbProf: TRzCheckBox;
    cbDateBorn: TRzCheckBox;
    cbNameSave: TRzCheckBox;
    edNameSave: TRzComboBox;
    RzDBLabel1: TRzDBLabel;
    cbContIsDelete: TRzCheckBox;
    procedure btCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbName_fClick(Sender: TObject);
    procedure cbName_iClick(Sender: TObject);
    procedure cbName_oClick(Sender: TObject);
    procedure cbProfClick(Sender: TObject);
    procedure cbDateBornClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btUpdateClick(Sender: TObject);
    procedure edNameSaveDropDown(Sender: TObject);
    procedure cbNameSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmContactUpdate: TfmContactUpdate;

implementation

{$R *.dfm}

uses form_handbook, datamodule, SystemUnit;

procedure TfmContactUpdate.btCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfmContactUpdate.btUpdateClick(Sender: TObject);
begin
  with ModuleDB do begin
    RzDBLabel1.DataSource.DataSet.Edit;
    //Фамилия
    if cbName_f.Checked then
      RzDBLabel1.DataSource.DataSet.FieldByName('cont_name_f').AsString:=edName_f.Text;
    //имя
    if cbName_i.Checked then
      RzDBLabel1.DataSource.DataSet.FieldByName('cont_name_i').AsString:=edName_i.Text;
    //Отчество
    if cbName_o.Checked then
      RzDBLabel1.DataSource.DataSet.FieldByName('cont_name_o').AsString:=edName_o.Text;
    //Профессия
    if cbProf.Checked then
      RzDBLabel1.DataSource.DataSet.FieldByName('cont_prof').AsString:=edProf.Text;
    //Хранимое имя
    if cbNameSave.Checked then
      RzDBLabel1.DataSource.DataSet.FieldByName('cont_name_save').AsString:=edNameSave.Text;
    //Дата рождения
    if cbDateBorn.Checked then
      RzDBLabel1.DataSource.DataSet.FieldByName('cont_date_born').AsDateTime:=edDateBorn.Date;
    RzDBLabel1.DataSource.DataSet.FieldByName('cont_is_delete').AsInteger:=BoolToBit(cbContIsDelete.Checked);
    RzDBLabel1.DataSource.DataSet.Post;

    ModuleDB.SYSP.Edit;
    ModuleDB.SYSP.FieldByName('date_last_change').AsDateTime:=Now;
    ModuleDB.SYSP.Post;

    Close;
  end;
end;

procedure TfmContactUpdate.cbDateBornClick(Sender: TObject);
begin
  edDateBorn.Enabled:=cbDateBorn.Checked;
end;

procedure TfmContactUpdate.cbName_fClick(Sender: TObject);
begin
  edName_f.Enabled:=cbName_f.Checked;
end;

procedure TfmContactUpdate.cbName_iClick(Sender: TObject);
begin
  edName_i.Enabled:=cbName_i.Checked;
end;

procedure TfmContactUpdate.cbName_oClick(Sender: TObject);
begin
  edName_o.Enabled:=cbName_o.Checked;
end;

procedure TfmContactUpdate.cbProfClick(Sender: TObject);
begin
  edProf.Enabled:=cbProf.Checked;
end;

procedure TfmContactUpdate.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TfmContactUpdate.FormCreate(Sender: TObject);
begin
  with ModuleDB do begin
    edName_f.Text:=NormalCase(memContactList.FieldByName('last_name').AsString);
    edName_i.Text:=NormalCase(memContactList.FieldByName('first_name').AsString);
    edName_o.Text:=NormalCase(memContactList.FieldByName('middle_name').AsString);
    edProf.Text:=NormalCase(memContactList.FieldByName('profession').AsString);
    edDateBorn.Date:=memContactList.FieldByName('data_rozhd').AsDateTime;
    edNameSave.Text:=GetContactNameSave(2,edName_f.Text,edName_i.Text,edName_o.Text,edProf.Text);
    cbContIsDelete.Checked:=BitToBool(ModuleDB.memContactList.FieldByName('dismissed').AsInteger);
  end;
end;

procedure TfmContactUpdate.cbNameSaveClick(Sender: TObject);
begin
  edNameSave.Enabled:=cbNameSave.Checked;
end;

procedure TfmContactUpdate.edNameSaveDropDown(Sender: TObject);
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

end.
