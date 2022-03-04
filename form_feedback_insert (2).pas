unit form_feedback_insert;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, RzDTP, RzDBDTP,
  Vcl.StdCtrls, RzCmboBx, RzButton, RzRadChk, Vcl.Mask, RzEdit, RzDBEdit,
  Vcl.DBCtrls, RzStatus, RzDBStat, RzPanel, RzTabs, Vcl.ExtCtrls, Data.DB,
  DBAccess, Uni, MemDS;

type
  TfmFeedbackInsert = class(TForm)
    Panel1: TPanel;
    btFeedCancel: TButton;
    btFeedComplete: TButton;
    Button3: TButton;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzGroupBox3: TRzGroupBox;
    RzDBStatusPane13: TRzDBStatusPane;
    RzDBStatusPane14: TRzDBStatusPane;
    RzDBStatusPane15: TRzDBStatusPane;
    RzGroupBox4: TRzGroupBox;
    RzDBStatusPane16: TRzDBStatusPane;
    RzDBStatusPane17: TRzDBStatusPane;
    RzGroupBox6: TRzGroupBox;
    edComment: TRzDBMemo;
    TabSheet2: TRzTabSheet;
    RzGroupBox1: TRzGroupBox;
    edName_f_curr: TRzDBEdit;
    edName_i_curr: TRzDBEdit;
    edname_o_curr: TRzDBEdit;
    edProf_curr: TRzDBEdit;
    edName_save_curr: TRzDBEdit;
    RzGroupBox2: TRzGroupBox;
    RzDBEdit8: TRzDBEdit;
    RzDBEdit9: TRzDBEdit;
    RzDBEdit10: TRzDBEdit;
    RzDBEdit11: TRzDBEdit;
    RzDBEdit12: TRzDBEdit;
    RzGroupBox5: TRzGroupBox;
    DSF: TUniDataSource;
    DSC: TUniDataSource;
    RzDBMemo1: TRzDBMemo;
    RzDBDateTimePicker1: TRzDBDateTimePicker;
    edUnit: TRzComboBox;
    Units: TUniTable;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    procedure FillCheckbox;
    procedure FillFileds;
    procedure Button3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btFeedCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btFeedCompleteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmFeedbackInsert: TfmFeedbackInsert;
  MED:    array [1..20] of TRzDBEdit;
  MCombo:   array [1..20] of TRzComboBox;
  MDate:  array [1..20] of TRzDBDateTimePicker;
  MMemo:  array [1..20] of TRzDBMemo;
  MFields_C:      array [1..20] of TField;
  MFields_F:      array [1..20] of TField;

implementation

{$R *.dfm}

uses datamodule, form_feedback, SystemUnit;

procedure TfmFeedbackInsert.FillCheckbox;
var
  i: integer;
begin
  for i := 0 to Componentcount-1 do begin
    if (components[i] is TRzDBEdit)and(Components[i].Tag>100)and(Components[i].Tag<101) then
      MED[components[i].tag-100] := TRzDBEdit(components[i]);
    // Заполняем массив из Combobox'ов заявки на редактирование
    if (components[i] is TRzComboBox)and(Components[i].Tag>100)and(Components[i].Tag<101) then
      MCombo[components[i].tag-100] := TRzComboBox(components[i]);
    // Заполняем массив из DateTimePicker'ов заявки на редактирование
    if (components[i] is TRzDBDateTimePicker)and(Components[i].Tag>100)and(Components[i].Tag<101) then
      MDate[components[i].tag-100] := TRzDBDateTimePicker(components[i]);
   // Заполняем массив из Memo'ов заявки на редактирование
    if (components[i] is TRzDBMemo)and(Components[i].Tag>100)and(Components[i].Tag<101) then
      MMemo[components[i].tag-100] := TRzDBMemo(components[i]);
  end;
end;

procedure TfmFeedbackInsert.FillFileds;
var
  i: integer;
begin
  for i := 0 to dsc.DataSet.FieldCount-1 do
    if (DSC.DataSet.Fields[i].Tag>0)and(DSC.DataSet.Fields[i].Tag<101) then
      MFields_C[DSC.DataSet.Fields[i].Tag]:=DSC.DataSet.FieldByName(DSC.DataSet.Fields[i].FieldName);

  for i := 0 to dsf.DataSet.FieldCount-1 do
    if (DSF.DataSet.Fields[i].Tag>0)and(DSF.DataSet.Fields[i].Tag<101) then
      MFields_F[DSF.DataSet.Fields[i].Tag]:=DSF.DataSet.FieldByName(DSF.DataSet.Fields[i].FieldName);
end;

procedure TfmFeedbackInsert.btFeedCancelClick(Sender: TObject);
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

procedure TfmFeedbackInsert.btFeedCompleteClick(Sender: TObject);
var
  i: integer;
begin

  if Application.MessageBox(PChar('Вы действительно хотите внести выбранные изменения?'),
    'Подтверждение',MB_ICONQUESTION+MB_YESNO)<>IDYES then Exit;

  // Применяем изменения
  with DSC.DataSet do begin

    if DSF.DataSet.State=dsEdit then
      DSF.DataSet.Post;
    Edit;

    for i := 1 to 20 do
      if MFields_C[i]<>nil then
        MFields_C[i].AsString:=MFields_F[i].AsString;

    FieldByName('cont_date_create').AsDateTime:=Now;
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

procedure TfmFeedbackInsert.Button3Click(Sender: TObject);
begin
  Close;
end;

procedure TfmFeedbackInsert.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TfmFeedbackInsert.FormCreate(Sender: TObject);
begin

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
end;

end.
