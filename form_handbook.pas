unit form_handbook;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzPanel, Vcl.ExtCtrls, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, GridsEh, DBAxisGridsEh, DBGridEh,
  RzButton, Data.DB, DBAccess, Uni, MemDS, Vcl.Menus, MemTableDataEh,
  DataDriverEh, MemTableEh, Vcl.ImgList, Vcl.PlatformDefaultStyleActnCtrls,
  System.Actions, Vcl.ActnList, Vcl.ActnMan, Vcl.StdCtrls, Vcl.DBCtrls, RzDBEdit,
  RzStatus, RzDBStat, RzSplit, RzForms, RzCommon;

type
  TfmHandbook = class(TForm)
    RzPanel1: TRzPanel;
    RzStatusBar1: TRzStatusBar;
    RzToolButton1: TRzToolButton;
    pmContacts: TPopupMenu;
    pmUnitInsert: TPopupMenu;
    pmUnits: TPopupMenu;
    Units: TUniQuery;
    srcUnits: TUniDataSource;
    memUnits: TMemTableEh;
    setUnits: TDataSetDriverEh;
    ActionManager: TActionManager;
    ImageList16: TImageList;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    Action4: TAction;
    Action5: TAction;
    Action6: TAction;
    Action7: TAction;
    RzToolButton2: TRzToolButton;
    RzSpacer1: TRzSpacer;
    RzToolButton3: TRzToolButton;
    RzToolButton4: TRzToolButton;
    RzToolButton5: TRzToolButton;
    RzToolButton6: TRzToolButton;
    acFindInContactList: TAction;
    RzSpacer2: TRzSpacer;
    Contacts: TUniQuery;
    setContacts: TDataSetDriverEh;
    memContacts: TMemTableEh;
    srcContacts: TUniDataSource;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    RzToolButton8: TRzToolButton;
    RzSpacer3: TRzSpacer;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    Action9: TAction;
    RzPanel2: TRzPanel;
    DBGridContact: TDBGridEh;
    RzPanel3: TRzPanel;
    RzDBMemo1: TRzDBMemo;
    RzPanel4: TRzPanel;
    RzDBStatusPane1: TRzDBStatusPane;
    RzDBStatusPane2: TRzDBStatusPane;
    RzDBStatusPane3: TRzDBStatusPane;
    RzDBStatusPane4: TRzDBStatusPane;
    RzDBStatusPane5: TRzDBStatusPane;
    RzPanel5: TRzPanel;
    RzDBStatusPane6: TRzDBStatusPane;
    RzDBStatusPane7: TRzDBStatusPane;
    RzDBStatusPane8: TRzDBStatusPane;
    RzDBStatusPane9: TRzDBStatusPane;
    RzDBStatusPane10: TRzDBStatusPane;
    RzDBStatusPane11: TRzDBStatusPane;
    memContactscont_id: TIntegerField;
    memContactscont_name_f: TWideStringField;
    memContactscont_name_i: TWideStringField;
    memContactscont_name_o: TWideStringField;
    memContactscont_name_save: TWideStringField;
    memContactscont_unit: TIntegerField;
    memContactscont_prof: TWideStringField;
    memContactscont_email: TWideStringField;
    memContactscont_email_name: TWideStringField;
    memContactscont_tel_work: TWideStringField;
    memContactscont_tel_work2: TWideStringField;
    memContactscont_tel_mobile: TWideStringField;
    memContactscont_tel_fax: TWideStringField;
    memContactscont_note: TWideMemoField;
    memContactscont_date_born: TDateField;
    memContactscont_date_create: TDateTimeField;
    memContactscont_date_change: TDateTimeField;
    memContactscont_tab_no: TIntegerField;
    memContactscont_is_delete: TLargeintField;
    memContactscont_is_dismissed: TLargeintField;
    memContactsunit_id: TIntegerField;
    memContactsunit_parent: TIntegerField;
    memContactsunit_name_short: TWideStringField;
    memContactsunit_name_full: TWideStringField;
    memUnitsunit_id: TIntegerField;
    memUnitsunit_parent: TIntegerField;
    memUnitsunit_name_short: TWideStringField;
    memUnitsunit_name_full: TWideStringField;
    pmContactList: TPopupMenu;
    miCL_Update: TMenuItem;
    mi: TMenuItem;
    RzToolButton7: TRzToolButton;
    RzToolButton9: TRzToolButton;
    RzToolButton10: TRzToolButton;
    N11: TMenuItem;
    RzToolButton11: TRzToolButton;
    Action8: TAction;
    N12: TMenuItem;
    miCLShowDismissed: TMenuItem;
    pmContactColumn: TPopupMenu;
    miViewColumns: TAction;
    miAutoFitColWidths: TAction;
    imgContactDelete: TImageList;
    pmFilter: TPopupMenu;
    N13: TMenuItem;
    acFilterShowAllContacts: TAction;
    RzFieldStatus1: TRzFieldStatus;
    RzFieldStatus2: TRzFieldStatus;
    miCLFilteToField: TMenuItem;
    N14: TMenuItem;
    R1: TMenuItem;
    RzDBStatusPane12: TRzDBStatusPane;
    RzSizePanel1: TRzSizePanel;
    RzPanel6: TRzPanel;
    DBGridContactList: TDBGridEh;
    RzSizePanel2: TRzSizePanel;
    RzPanel7: TRzPanel;
    DBGridUnits: TDBGridEh;
    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
    procedure Action4Execute(Sender: TObject);
    procedure Action5Execute(Sender: TObject);
    procedure Action6Execute(Sender: TObject);
    procedure Action7Execute(Sender: TObject);
    procedure acFindInContactListExecute(Sender: TObject);
    procedure Action9Execute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridContactListGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Action8Execute(Sender: TObject);
    procedure miCLShowDismissedClick(Sender: TObject);
    procedure miCL_UpdateClick(Sender: TObject);
    procedure miClick(Sender: TObject);
    procedure pmContactColumnPopup(Sender: TObject);
    procedure miViewColumnsExecute(Sender: TObject);
    procedure miAutoFitColWidthsExecute(Sender: TObject);
    procedure DBGridUnitsMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBGridContactApplyFilter(Sender: TObject);
    procedure acFilterShowAllContactsExecute(Sender: TObject);
    procedure DBGridContactGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridContactListCellClick(Column: TColumnEh);
    procedure pmContactListPopup(Sender: TObject);
    procedure miCLFilteToFieldClick(Sender: TObject);
    procedure R1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmHandbook: TfmHandbook;

implementation

{$R *.dfm}

uses datamodule, SystemUnit, form_contact_edit, form_unit_edit,
  form_contact_update;

procedure TfmHandbook.Action1Execute(Sender: TObject);
var
  id: integer;
begin
  if not CheckAccess(CurrUserId,'handb_insert') then Exit;

  id:=memUnits.FieldByName('unit_id').AsInteger;
  memUnits.Insert;
  memUnits.FieldByName('unit_parent').AsInteger:=id;
  CreateForm(TfmUnitEdit,'Новая группа');
end;

procedure TfmHandbook.Action2Execute(Sender: TObject);
begin
  if not CheckAccess(CurrUserId,'handb_insert') then Exit;

  memUnits.Insert;
  memUnits.FieldByName('unit_parent').AsInteger:=0;
  CreateForm(TfmUnitEdit,'Новая группа (в корне)');
end;

procedure TfmHandbook.Action3Execute(Sender: TObject);
begin
  if not CheckAccess(CurrUserId,'handb_edit') then Exit;

  memUnits.Edit;
  CreateForm(TfmUnitEdit,'Редактирование группы');
end;

procedure TfmHandbook.Action4Execute(Sender: TObject);
begin
  if not CheckAccess(CurrUserId,'handb_delete') then Exit;

  if Application.MessageBox(PChar('Удалить группу: '+memUnits.FieldByName('unit_name_short').AsString+'?'),
    'Подтверждение',MB_ICONQUESTION+MB_YESNO)<>IDYES then Exit;
  memUnits.Delete;
end;

procedure TfmHandbook.Action5Execute(Sender: TObject);
begin
  if not CheckAccess(CurrUserId,'handb_insert') then Exit;

  memContacts.Insert;
  CreateForm(TfmContactEdit,'Новый контакт');
end;

procedure TfmHandbook.Action6Execute(Sender: TObject);
begin
  if not CheckAccess(CurrUserId,'handb_edit') then Exit;

  memContacts.Edit;
  CreateForm(TfmContactEdit,'Редактирование контакта');
end;

procedure TfmHandbook.Action7Execute(Sender: TObject);
begin
  if not CheckAccess(CurrUserId,'handb_mark_delete') then Exit;

  if memContacts.FieldByName('cont_is_delete').AsInteger=0 then begin
    if Application.MessageBox(PChar('Пометить на удаление контакт: "'+
      memContacts.FieldByName('cont_name_save').AsString+'"?'),
      'Подтверждение',MB_ICONQUESTION+MB_YESNO)<>IDYES then Exit;
   memContacts.Edit;
   memContacts.FieldByName('cont_is_delete').AsInteger:=1;
   memContacts.Post;
   Exit;
 end;
 if memContacts.FieldByName('cont_is_delete').AsInteger=1 then begin
   if Application.MessageBox(PChar('Снять метку удаления с  контакта: "'+
    memContacts.FieldByName('cont_name_save').AsString+'"?'),
    'Подтверждение',MB_ICONQUESTION+MB_YESNO)<>IDYES then Exit;
   memContacts.Edit;
   memContacts.FieldByName('cont_is_delete').AsInteger:=0;
   memContacts.Post;
   Exit;
 end;
end;

procedure TfmHandbook.Action8Execute(Sender: TObject);
begin
  if not CheckAccess(CurrUserId,'handb_delete') then Exit;

  if Application.MessageBox(PChar('Удалить контакт: "'+
      memContacts.FieldByName('cont_name_save').AsString+'"?'),
      'Подтверждение',MB_ICONQUESTION+MB_YESNO)<>IDYES then Exit;
   memContacts.Delete;
end;

procedure TfmHandbook.acFilterShowAllContactsExecute(Sender: TObject);
begin
  DBGridContact.SearchPanel.CancelSearchFilter;
  memContacts.Filtered:=false;
end;

procedure TfmHandbook.acFindInContactListExecute(Sender: TObject);
var
  Search, tmp: string;
begin
  tmp:=memContacts.FieldByName('cont_name_save').AsString;
  if pos(' ',tmp)=0 then
    Search:=tmp else
      Search:=Copy(tmp,1,pos(' ',tmp)-1);
  DBGridContactList.DataSource.DataSet.Filtered:=false;
  DBGridContactList.SearchPanel.SearchingText:=Search;
  DBGridContactList.SearchPanel.ApplySearchFilter;
end;

procedure TfmHandbook.Action9Execute(Sender: TObject);
begin
  Units.Refresh;
  Contacts.Refresh;
  memUnits.Refresh;
  memContacts.Refresh;
end;

procedure TfmHandbook.DBGridContactApplyFilter(Sender: TObject);
begin
  memContacts.Filtered:=false;
end;

procedure TfmHandbook.DBGridContactGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if TDBGridEh(Sender).DataSource.DataSet.FieldByName('cont_is_delete').AsString='1' then
    Background:=RGB(255,235,235);
end;

procedure TfmHandbook.DBGridContactListCellClick(Column: TColumnEh);
begin
  RzFieldStatus2.Caption:=Column.FieldName;
end;

procedure TfmHandbook.DBGridContactListGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if TDBGridEh(Sender).DataSource.DataSet.FieldByName('dismissed').AsString='1' then
    Background:=RGB(255,235,235);
end;

procedure TfmHandbook.DBGridUnitsMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  DBGridContact.SearchPanel.CancelSearchFilter;
  memContacts.Filter:='cont_unit = '+memUnits.FieldByName('unit_id').AsString;
  memContacts.Filtered:=true;
end;

procedure TfmHandbook.FormCreate(Sender: TObject);
begin
  //Перемещение записей в дереве
  if CheckAccess(CurrUserId,'handb_move_unit',false) then
    DBGridUnits.OptionsEh:=DBGridUnits.OptionsEh+[dghRecordMoving] else
      DBGridUnits.OptionsEh:=DBGridUnits.OptionsEh-[dghRecordMoving];

  //Доступ к списку сотрудников, проверяем активна ли база
  RzSizePanel1.Visible:=CheckAccess(CurrUserId,'handb_contact_list',false) and IBConnect;
  acFindInContactList.Visible:=CheckAccess(CurrUserId,'handb_contact_list',false) and IBConnect;

  Units.Active:=true;
  memUnits.Active:=true;
  Contacts.Active:=true;
  memContacts.Active:=true;
end;

procedure TfmHandbook.miAutoFitColWidthsExecute(Sender: TObject);
begin
  DBGridContact.AutoFitColWidths:=(Sender as TMenuItem).Checked;
end;

procedure TfmHandbook.miCLFilteToFieldClick(Sender: TObject);
var
  field, search: string;
begin
  DBGridContactList.SearchPanel.CancelSearchFilter;
  field:=DBGridContactList.SelectedField.FieldName;
  search:=DBGridContactList.DataSource.DataSet.FieldByName(field).AsString;
  DBGridContactList.DataSource.DataSet.Filter:=field+' = '''+search+'''';
  DBGridContactList.DataSource.DataSet.Filtered:=true;
end;

procedure TfmHandbook.miClick(Sender: TObject);
begin
  if not CheckAccess(CurrUserId,'handb_insert') then Exit;

  memContacts.Insert;
  with ModuleDB.memContactList do begin
    memContacts.FieldByName('cont_name_f').AsString:=NormalCase(FieldByName('last_name').AsString);
    memContacts.FieldByName('cont_name_i').AsString:=NormalCase(FieldByName('first_name').AsString);
    memContacts.FieldByName('cont_name_o').AsString:=NormalCase(FieldByName('middle_name').AsString);
    memContacts.FieldByName('cont_prof').AsString:=NormalCase(FieldByName('profession').AsString);
    memContacts.FieldByName('cont_name_save').AsString:=NormalCase(GetContactNameSave(
      2,FieldByName('last_name').AsString,FieldByName('first_name').AsString,
        FieldByName('middle_name').AsString,FieldByName('profession').AsString));
    memContacts.FieldByName('cont_date_born').AsDateTime:=FieldByName('data_rozhd').AsDateTime;
  end;
  CreateForm(TfmContactEdit,'Новый контакт');
end;

procedure TfmHandbook.miCLShowDismissedClick(Sender: TObject);
var
  param: Variant;
begin
  if miCLShowDismissed.Checked then
    param:='2' else param:='1';
  ModuleDB.ContactList.Close;
  ModuleDB.ContactList.ParamByName('dism').AsString:=param;
  ModuleDB.ContactList.Open;
  ModuleDB.memContactList.Refresh;

end;

procedure TfmHandbook.miCL_UpdateClick(Sender: TObject);
begin
  CreateForm(TfmContactUpdate,'Обновленние данных: '+
    memContacts.FieldByName('cont_name_save').AsString);
end;

procedure TfmHandbook.miViewColumnsExecute(Sender: TObject);
begin
  DBGridContact.Columns[(Sender as TMenuItem).Tag].Visible:=
    (Sender as TMenuItem).Checked;
end;

procedure TfmHandbook.pmContactColumnPopup(Sender: TObject);
var
  mi: TMenuItem;
  i: Integer;
begin
  pmContactColumn.Items.Clear;
  //Колонки по ширине окна
  mi := TMenuItem.Create(pmContactColumn);
  mi.Caption := 'Колонки по ширине окна';
  mi.Checked := DBGridContact.AutoFitColWidths;
  mi.AutoCheck := true;
  mi.OnClick := miAutoFitColWidthsExecute;
  pmContactColumn.Items.Add(mi);
  //Разделитель
  mi := TMenuItem.Create(pmContactColumn);
  mi.Caption := '-';
  pmContactColumn.Items.Add(mi);
  //Заполняем по столбцам
  for i:=0 to DBGridContact.Columns.Count-1 do
  begin
    mi := TMenuItem.Create(pmContactColumn);
    //Устанавливаем свойства
    mi.AutoCheck:=true;
    mi.Caption := DBGridContact.Columns[i].Title.Caption;
    mi.Checked := DBGridContact.Columns[i].Visible;
    mi.Tag := i;
    mi.OnClick := miViewColumnsExecute;
    pmContactColumn.Items.Add(mi);
  end;
end;

procedure TfmHandbook.pmContactListPopup(Sender: TObject);
begin
  miCLFilteToField.Caption:='Выбрать все записи: '+
    DBGridContactList.DataSource.DataSet.FieldByName(DBGridContactList.SelectedField.FieldName).AsString;
end;

procedure TfmHandbook.R1Click(Sender: TObject);
begin
  DBGridContactList.SearchPanel.CancelSearchFilter;
  DBGridContactList.DataSource.DataSet.Filtered:=false;
end;

end.
