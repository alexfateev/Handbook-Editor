unit form_feedback_edit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzTabs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  RzLabel, RzDBLbl, Vcl.DBCtrls, RzDBEdit, RzStatus, RzDBStat, RzPanel,
  RzButton, RzRadChk, Vcl.Mask, RzEdit, DBAccess, Uni, RzCmboBx, MemDS,
  Vcl.ComCtrls, RzDTP, RzDBDTP;

type
  TfmFeedbackEdit = class(TForm)
    Panel1: TPanel;
    btFeedCancel: TButton;
    btFeedComplete: TButton;
    Button3: TButton;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    RzGroupBox3: TRzGroupBox;
    RzDBStatusPane13: TRzDBStatusPane;
    RzDBStatusPane14: TRzDBStatusPane;
    RzDBStatusPane15: TRzDBStatusPane;
    RzGroupBox4: TRzGroupBox;
    RzDBStatusPane16: TRzDBStatusPane;
    RzDBStatusPane17: TRzDBStatusPane;
    RzGroupBox6: TRzGroupBox;
    edComment: TRzDBMemo;
    RzGroupBox1: TRzGroupBox;
    edName_f: TRzDBEdit;
    cbName_f: TRzCheckBox;
    edName_f_curr: TRzDBEdit;
    edName_i_curr: TRzDBEdit;
    cbName_i: TRzCheckBox;
    cbName_o: TRzCheckBox;
    edname_o_curr: TRzDBEdit;
    edProf_curr: TRzDBEdit;
    cbProf: TRzCheckBox;
    cbUnit: TRzCheckBox;
    cbName_save: TRzCheckBox;
    edName_save_curr: TRzDBEdit;
    cbDate_born: TRzCheckBox;
    edDate_born_curr: TRzDBEdit;
    edUnit_curr: TRzDBEdit;
    RzGroupBox2: TRzGroupBox;
    RzDBEdit8: TRzDBEdit;
    RzCheckBox7: TRzCheckBox;
    RzCheckBox8: TRzCheckBox;
    RzDBEdit9: TRzDBEdit;
    RzDBEdit10: TRzDBEdit;
    RzCheckBox9: TRzCheckBox;
    RzCheckBox10: TRzCheckBox;
    RzDBEdit11: TRzDBEdit;
    RzDBEdit12: TRzDBEdit;
    RzCheckBox11: TRzCheckBox;
    RzGroupBox5: TRzGroupBox;
    RzCheckBox13: TRzCheckBox;
    RzDBMemo1: TRzDBMemo;
    DSF: TUniDataSource;
    DSC: TUniDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edName_i: TRzDBEdit;
    edName_o: TRzDBEdit;
    edProf: TRzDBEdit;
    edName_save: TRzDBEdit;
    edUnit: TRzComboBox;
    TabSheet3: TRzTabSheet;
    Units: TUniTable;
    RzDBEdit1: TRzDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    RzDBDateTimePicker1: TRzDBDateTimePicker;
    RzDBEdit2: TRzDBEdit;
    RzDBEdit3: TRzDBEdit;
    RzDBEdit4: TRzDBEdit;
    RzDBEdit5: TRzDBEdit;
    RzDBMemo2: TRzDBMemo;
    Label13: TLabel;
    RzGroupBox7: TRzGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    RzDBEdit6: TRzDBEdit;
    RzDBEdit19: TRzDBEdit;
    RzDBEdit20: TRzDBEdit;
    RzDBEdit21: TRzDBEdit;
    RzDBEdit22: TRzDBEdit;
    RzComboBox1: TRzComboBox;
    RzDBDateTimePicker2: TRzDBDateTimePicker;
    RzGroupBox8: TRzGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    RzDBEdit28: TRzDBEdit;
    RzDBEdit29: TRzDBEdit;
    RzDBEdit30: TRzDBEdit;
    RzDBEdit31: TRzDBEdit;
    RzDBEdit32: TRzDBEdit;
    RzGroupBox9: TRzGroupBox;
    Label26: TLabel;
    RzDBMemo4: TRzDBMemo;
    procedure FillCheckbox;
    procedure FillFileds;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cbName_fClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure btFeedCancelClick(Sender: TObject);
    procedure btFeedCompleteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmFeedbackEdit: TfmFeedbackEdit;
  MCB:      array [1..20] of TRzCheckBox;
  MED:      array [1..20] of TRzDBEdit;
  MED_curr: array [1..20] of TRzDBEdit;
  MCombo:   array [1..20] of TRzComboBox;
  MDate:    array [1..20] of TRzDBDateTimePicker;
  MFields_C:      array [1..20] of TField;
  MFields_F_old:  array [1..20] of TField;
  MFields_F:      array [1..20] of TField;
  MMemo_curr:     array [1..20] of TRzDBMemo;
  MMemo:          array [1..20] of TRzDBMemo;

implementation

{$R *.dfm}

uses form_feedback, datamodule, SystemUnit;

procedure TfmFeedbackEdit.btFeedCancelClick(Sender: TObject);
begin
  if Application.MessageBox('Вы действительно хотите отменить заявку?',
      'Подтверждение',MB_ICONQUESTION+MB_YESNO)<>IDYES then Exit;

  // Закрываем заявку как отмененную
  with DSF.DataSet do begin
    Edit;
    FieldByName('feed_date_close').AsDateTime:=Now;
    FieldByName('feed_user_close').AsInteger:=CurrUserId;
    FieldByName('feed_status').AsInteger:=2;
    Post;
  end;
  Close;
end;

procedure TfmFeedbackEdit.btFeedCompleteClick(Sender: TObject);
var
  i: integer;
  apply: Boolean;
begin
  apply:=false;
  for i := 1 to 20 do
    if MCB[i]<>nil then
        if MCB[i].Checked then apply:=true;
  if not apply then begin
    Application.MessageBox('Не выбрано ни одно поле для внесения изменений.','Предупреждение',MB_ICONEXCLAMATION);
    Exit;
  end;

  if Application.MessageBox(PChar('Вы действительно хотите внести выбранные изменения?'),
    'Подтверждение',MB_ICONQUESTION+MB_YESNO)<>IDYES then Exit;

  // Применяем изменения
  with DSC.DataSet do begin

    if DSF.DataSet.State<>dsEdit then DSF.DataSet.Edit;
    for i := 1 to 20 do
      if MFields_F_old[i]<>nil then begin
        MFields_F_old[i].AsString:=MFields_C[i].AsString;
      end;

    if DSF.DataSet.State=dsEdit then
      DSF.DataSet.Post;
    Edit;

    for i := 1 to 20 do
      if MCB[i]<>nil then
        if MCB[i].Checked then
          MFields_C[i].AsString:=MFields_F[i].AsString;
    FieldByName('cont_date_change').AsDateTime:=Now;

    ModuleDB.SYSP.Edit;
    ModuleDB.SYSP.FieldByName('date_last_change').AsDateTime:=Now;
    ModuleDB.SYSP.Post;

    Post;
  end;
  // Закрываем заявку как выполненую
  with DSF.DataSet do begin
    Edit;
    FieldByName('feed_date_close').AsDateTime:=Now;
    FieldByName('feed_user_close').AsInteger:=CurrUserId;
    FieldByName('feed_status').AsInteger:=1;
    Post;
  end;
  Close;
end;

procedure TfmFeedbackEdit.Button3Click(Sender: TObject);
begin
  Close;
end;

procedure TfmFeedbackEdit.cbName_fClick(Sender: TObject);
begin
  if MED_curr[(Sender as TRzCheckBox).Tag] <> nil then
    MED_curr[(Sender as TRzCheckBox).Tag].Enabled:=(Sender as TRzCheckBox).Checked;
  if MED[(Sender as TRzCheckBox).Tag] <> nil then
    MED[(Sender as TRzCheckBox).Tag].Enabled:=(Sender as TRzCheckBox).Checked;
  if MCombo[(Sender as TRzCheckBox).Tag] <> nil then
    MCombo[(Sender as TRzCheckBox).Tag].Enabled:=(Sender as TRzCheckBox).Checked;
  if MDate[(Sender as TRzCheckBox).Tag] <> nil then
    MDate[(Sender as TRzCheckBox).Tag].Enabled:=(Sender as TRzCheckBox).Checked;
  if MMemo_curr[(Sender as TRzCheckBox).Tag] <> nil then
    MMemo_curr[(Sender as TRzCheckBox).Tag].Enabled:=(Sender as TRzCheckBox).Checked;
  if MMemo[(Sender as TRzCheckBox).Tag] <> nil then
    MMemo[(Sender as TRzCheckBox).Tag].Enabled:=(Sender as TRzCheckBox).Checked;
end;

procedure TfmFeedbackEdit.FillCheckbox;
var
  i: integer;
begin
  for i := 0 to Componentcount-1 do begin
    // Заполняем массив из Checkbox'ов
    if (components[i] is TRzCheckBox)and(Components[i].Tag>0)and(Components[i].Tag<101) then
      MCB[components[i].tag] := TRzCheckBox(components[i]);
    // Заполняем массив из Edit'ов текущих данных контакта
    if (components[i] is TRzDBEdit)and(Components[i].Tag>100)and(Components[i].Tag<201) then
      MED_curr[components[i].tag-100] := TRzDBEdit(components[i]);
    // Заполняем массив из Memo'ов текущих данных контакта
    if (components[i] is TRzDBMemo)and(Components[i].Tag>100)and(Components[i].Tag<201) then
      MMemo_curr[components[i].tag-100] := TRzDBMemo(components[i]);
    // Заполняем массив из Edit'ов заявки на редактирование
    if (components[i] is TRzDBEdit)and(Components[i].Tag>200)and(Components[i].Tag<301) then
      MED[components[i].tag-200] := TRzDBEdit(components[i]);
    // Заполняем массив из Combobox'ов заявки на редактирование
    if (components[i] is TRzComboBox)and(Components[i].Tag>200)and(Components[i].Tag<301) then
      MCombo[components[i].tag-200] := TRzComboBox(components[i]);
    // Заполняем массив из DateTimePicker'ов заявки на редактирование
    if (components[i] is TRzDBDateTimePicker)and(Components[i].Tag>200)and(Components[i].Tag<301) then
      MDate[components[i].tag-200] := TRzDBDateTimePicker(components[i]);
   // Заполняем массив из Memo'ов заявки на редактирование
    if (components[i] is TRzDBMemo)and(Components[i].Tag>200)and(Components[i].Tag<301) then
      MMemo[components[i].tag-200] := TRzDBMemo(components[i]);
  end;
end;

procedure TfmFeedbackEdit.FillFileds;
var
  i: integer;
begin
  for i := 0 to dsc.DataSet.FieldCount-1 do
    if (DSC.DataSet.Fields[i].Tag>0)and(DSC.DataSet.Fields[i].Tag<101) then
      MFields_C[DSC.DataSet.Fields[i].Tag]:=DSC.DataSet.FieldByName(DSC.DataSet.Fields[i].FieldName);

  for i := 0 to dsf.DataSet.FieldCount-1 do
    if (DSF.DataSet.Fields[i].Tag>0)and(DSF.DataSet.Fields[i].Tag<101) then
      MFields_F[DSF.DataSet.Fields[i].Tag]:=DSF.DataSet.FieldByName(DSF.DataSet.Fields[i].FieldName);

  for i := 0 to dsf.DataSet.FieldCount-1 do
    if (DSF.DataSet.Fields[i].Tag>0)and(DSF.DataSet.Fields[i].Tag<101) then
      MFields_F_old[DSF.DataSet.Fields[i].Tag]:=DSF.DataSet.FieldByName(DSF.DataSet.Fields[i].FieldName+'_old');
end;

procedure TfmFeedbackEdit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
  if DSF.DataSet.State=dsEdit then
    DSF.DataSet.Cancel;
end;

procedure TfmFeedbackEdit.FormCreate(Sender: TObject);
var
  i: integer;
begin
  DSC.DataSet.Locate('cont_id',DSF.DataSet.FieldByName('feed_cont_id').AsString,[]);

  if DSF.DataSet.FieldByName('feed_status').AsInteger<>0 then begin
    TabSheet1.Enabled:=false;
    TabSheet2.Enabled:=false;
    btFeedCancel.Enabled:=false;
    btFeedComplete.Enabled:=false;
  end;

  Units.Active:=true;
  FillCombobox(Units, edUnit, 'unit_name_full', 'unit_id');
  edUnit.Value:=DSF.DataSet.FieldByName('feed_cont_unit').AsString;

  FillCheckbox;
  FillFileds;

  for i := 1 to 20 do
    if (MCB[i]<>nil)and(MFields_C[i]<>nil) then
      MCB[i].Checked:=not (Trim(MFields_C[i].AsString)=Trim(MFields_F[i].AsString));

end;

end.
