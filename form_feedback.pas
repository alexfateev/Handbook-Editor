unit form_feedback;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RzPanel, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, RzButton, GridsEh, DBAxisGridsEh,
  DBGridEh, MemTableDataEh, Data.DB, DBAccess, Uni, MemDS, DataDriverEh,
  MemTableEh, Vcl.ImgList, Vcl.Menus, RzRadChk, Vcl.StdCtrls;

type
  TfmFeedback = class(TForm)
    RzStatusBar1: TRzStatusBar;
    RzPanel1: TRzPanel;
    DBGridFeedback: TDBGridEh;
    RzToolButton1: TRzToolButton;
    memFeedback: TMemTableEh;
    setFeedback: TDataSetDriverEh;
    Feedback: TUniQuery;
    srcFeedback: TUniDataSource;
    imgAction: TImageList;
    imgStatus: TImageList;
    ImageList1: TImageList;
    RzToolButton2: TRzToolButton;
    tbOpen: TRzToolButton;
    tbCancel: TRzToolButton;
    RzSpacer1: TRzSpacer;
    RzToolButton5: TRzToolButton;
    pmFilterStatus: TPopupMenu;
    pmFSComplete: TMenuItem;
    pmFSCancel: TMenuItem;
    pmFSAll: TMenuItem;
    pmFSNew: TMenuItem;
    N6: TMenuItem;
    RzToolButton6: TRzToolButton;
    pmFilterAction: TPopupMenu;
    pmFAAll: TMenuItem;
    N7: TMenuItem;
    pmFAInsert: TMenuItem;
    pmFAEdit: TMenuItem;
    pmFADelete: TMenuItem;
    Label1: TLabel;
    RzSpacer2: TRzSpacer;
    Contacts: TUniQuery;
    srcConacts: TUniDataSource;
    Contactscont_id: TIntegerField;
    Contactscont_name_f: TWideStringField;
    Contactscont_name_i: TWideStringField;
    Contactscont_name_o: TWideStringField;
    Contactscont_name_save: TWideStringField;
    Contactscont_unit: TIntegerField;
    Contactscont_prof: TWideStringField;
    Contactscont_email: TWideStringField;
    Contactscont_email_name: TWideStringField;
    Contactscont_tel_work: TWideStringField;
    Contactscont_tel_work2: TWideStringField;
    Contactscont_tel_mobile: TWideStringField;
    Contactscont_tel_fax: TWideStringField;
    Contactscont_note: TWideMemoField;
    Contactscont_date_born: TDateField;
    Contactscont_date_create: TDateTimeField;
    Contactscont_date_change: TDateTimeField;
    Contactscont_tab_no: TIntegerField;
    Contactscont_is_delete: TLargeintField;
    Contactscont_is_dismissed: TLargeintField;
    Contactsunit_id: TIntegerField;
    Contactsunit_parent: TIntegerField;
    Contactsunit_name_short: TWideStringField;
    Contactsunit_name_full: TWideStringField;
    memFeedbackfeed_id: TIntegerField;
    memFeedbackfeed_action: TIntegerField;
    memFeedbackfeed_cont_id: TIntegerField;
    memFeedbackfeed_cont_name_f: TWideStringField;
    memFeedbackfeed_cont_name_i: TWideStringField;
    memFeedbackfeed_cont_name_o: TWideStringField;
    memFeedbackfeed_cont_name_save: TWideStringField;
    memFeedbackfeed_cont_unit: TIntegerField;
    memFeedbackfeed_cont_prof: TWideStringField;
    memFeedbackfeed_cont_email: TWideStringField;
    memFeedbackfeed_cont_tel_work: TWideStringField;
    memFeedbackfeed_cont_tel_work2: TWideStringField;
    memFeedbackfeed_cont_tel_mobile: TWideStringField;
    memFeedbackfeed_cont_tel_fax: TWideStringField;
    memFeedbackfeed_cont_note: TWideMemoField;
    memFeedbackfeed_cont_date_born: TDateField;
    memFeedbackfeed_cont_is_delete: TLargeintField;
    memFeedbackfeed_user_name: TWideStringField;
    memFeedbackfeed_user_contact: TWideStringField;
    memFeedbackfeed_user_comment: TWideStringField;
    memFeedbackfeed_delete_note: TWideStringField;
    memFeedbackfeed_user_realname: TWideStringField;
    memFeedbackfeed_status: TWideStringField;
    memFeedbackfeed_date_create: TDateTimeField;
    memFeedbackfeed_date_close: TDateTimeField;
    memFeedbackfeed_user_close: TIntegerField;
    memFeedbackuser_id: TIntegerField;
    memFeedbackuser_name: TWideStringField;
    memFeedbackuser_password: TWideStringField;
    memFeedbackuser_group: TIntegerField;
    memFeedbackuser_is_active: TLargeintField;
    memFeedbackuser_description: TWideStringField;
    memFeedbackfeed_cont_name_f_old: TWideStringField;
    memFeedbackfeed_cont_name_i_old: TWideStringField;
    memFeedbackfeed_cont_name_o_old: TWideStringField;
    memFeedbackfeed_cont_name_save_old: TWideStringField;
    memFeedbackfeed_cont_unit_old: TIntegerField;
    memFeedbackfeed_cont_prof_old: TWideStringField;
    memFeedbackfeed_cont_email_old: TWideStringField;
    memFeedbackfeed_cont_tel_work_old: TWideStringField;
    memFeedbackfeed_cont_tel_work2_old: TWideStringField;
    memFeedbackfeed_cont_tel_mobile_old: TWideStringField;
    memFeedbackfeed_cont_tel_fax_old: TWideStringField;
    memFeedbackfeed_cont_note_old: TWideMemoField;
    memFeedbackfeed_cont_date_born_old: TDateField;
    pmFeedback: TPopupMenu;
    miOpen: TMenuItem;
    miCancel: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure RefrechFeedbackList;
    procedure pmFSAllClick(Sender: TObject);
    procedure pmFSNewClick(Sender: TObject);
    procedure pmFAAllClick(Sender: TObject);
    procedure pmFAInsertClick(Sender: TObject);
    procedure tbOpenClick(Sender: TObject);
    procedure tbCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmFeedback: TfmFeedback;

implementation

{$R *.dfm}

uses datamodule, SystemUnit, form_feedback_delete, form_feedback_edit,
  form_feedback_insert, form_wizard_contact_add_email;

function GetIndex(MenuItem: TMenuItem): integer;
begin
  if MenuItem.Checked then
    Result:=MenuItem.Tag else
      Result:=-1;
end;

procedure TfmFeedback.pmFAAllClick(Sender: TObject);
begin
  pmFAAll.Checked:=true;
  pmFAInsert.Checked:=true;
  pmFAEdit.Checked:=true;
  pmFADelete.Checked:=true;
  RefrechFeedbackList;
end;

procedure TfmFeedback.pmFAInsertClick(Sender: TObject);
begin
  pmFAAll.Checked := pmFAInsert.Checked and pmFAEdit.Checked and pmFADelete.Checked;
  RefrechFeedbackList;
end;

procedure TfmFeedback.pmFSAllClick(Sender: TObject);
begin
  pmFSAll.Checked:=true;
  pmFSNew.Checked:=true;
  pmFSComplete.Checked:=true;
  pmFSCancel.Checked:=true;
  RefrechFeedbackList;
end;

procedure TfmFeedback.pmFSNewClick(Sender: TObject);
begin
  pmFSAll.Checked := pmFSNew.Checked and pmFSComplete.Checked and pmFSCancel.Checked;
  RefrechFeedbackList;
end;

procedure TfmFeedback.RefrechFeedbackList;
begin
  with Feedback do begin
    Close;
    // Передаем значения поля "Статус"
    ParamByName('s_new').AsInteger:=GetIndex(pmFSNew);
    ParamByName('s_complete').AsInteger:=GetIndex(pmFSComplete);
    ParamByName('s_cancel').AsInteger:=GetIndex(pmFSCancel);
    // Передаем значения поля "Действие"
    ParamByName('a_insert').AsInteger:=GetIndex(pmFAInsert);
    ParamByName('a_edit').AsInteger:=GetIndex(pmFAEdit);
    ParamByName('a_delete').AsInteger:=GetIndex(pmFADelete);

    Open;
  end;
  memFeedback.Refresh;
end;

procedure TfmFeedback.FormCreate(Sender: TObject);
begin
  Contacts.Active:=true;
  Feedback.Active:=true;
  memFeedback.Active:=true;
end;

procedure TfmFeedback.RzToolButton1Click(Sender: TObject);
begin
  Feedback.Refresh;
  memFeedback.Refresh;
end;

procedure TfmFeedback.RzToolButton2Click(Sender: TObject);
begin
  DBGridFeedback.SearchPanel.Enabled:=(Sender as TRzToolButton).Down;
  if not (Sender as TRzToolButton).Down then
    DBGridFeedback.SearchPanel.CancelSearchFilter;
end;

procedure TfmFeedback.tbCancelClick(Sender: TObject);
begin
  if memFeedback.RecordCount=0 then Exit;
  if srcFeedback.DataSet.FieldByName('feed_status').AsInteger<>0 then Exit;

  if Application.MessageBox('Вы действительно хотите отменить заявку?',
      'Подтверждение',MB_ICONQUESTION+MB_YESNO)<>IDYES then Exit;

  // Закрываем заявку как отмененную
  with srcFeedback.DataSet do begin
    Edit;
    FieldByName('feed_date_close').AsDateTime:=Now;
    FieldByName('feed_user_close').AsInteger:=CurrUserId;
    FieldByName('feed_status').AsInteger:=2;
    Post;
  end;

end;

procedure TfmFeedback.tbOpenClick(Sender: TObject);
begin
  if memFeedback.RecordCount=0 then Exit;
  // Открываем заявку "на удаление"
  if memFeedback.FieldByName('feed_action').AsInteger=2 then
    CreateForm(TfmFeedbackDelete,'Заявка на удаление');
  // Открываем заявку "на редактирование"
  if memFeedback.FieldByName('feed_action').AsInteger=1 then
    CreateForm(TfmFeedbackEdit,'Заявка на редактирование');
  // Открываем заявку "на добавление"
  if memFeedback.FieldByName('feed_action').AsInteger=0 then
    CreateForm(TfmFeedbackInsert,'Заявка на добавление');
end;

end.
