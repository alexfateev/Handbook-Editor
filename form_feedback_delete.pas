unit form_feedback_delete;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzPanel, Vcl.ExtCtrls,
  RzStatus, RzDBStat, RzLabel, RzDBLbl, Data.DB, RzTabs, Vcl.DBCtrls, RzDBEdit,
  DBAccess, Uni;

type
  TfmFeedbackDelete = class(TForm)
    RzPanel1: TRzPanel;
    btFeedComplete: TButton;
    btClose: TButton;
    btFeedCancel: TButton;
    DBC: TRzDBLabel;
    DBF: TRzDBLabel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    RzGroupBox1: TRzGroupBox;
    RzDBStatusPane1: TRzDBStatusPane;
    RzDBStatusPane2: TRzDBStatusPane;
    RzDBStatusPane3: TRzDBStatusPane;
    RzDBStatusPane4: TRzDBStatusPane;
    RzDBStatusPane5: TRzDBStatusPane;
    RzDBStatusPane6: TRzDBStatusPane;
    RzDBStatusPane12: TRzDBStatusPane;
    RzGroupBox2: TRzGroupBox;
    RzDBStatusPane7: TRzDBStatusPane;
    RzDBStatusPane8: TRzDBStatusPane;
    RzDBStatusPane9: TRzDBStatusPane;
    RzDBStatusPane10: TRzDBStatusPane;
    RzDBStatusPane11: TRzDBStatusPane;
    RzGroupBox3: TRzGroupBox;
    RzDBStatusPane13: TRzDBStatusPane;
    RzDBStatusPane14: TRzDBStatusPane;
    RzDBStatusPane15: TRzDBStatusPane;
    RzGroupBox4: TRzGroupBox;
    RzDBStatusPane16: TRzDBStatusPane;
    RzDBStatusPane17: TRzDBStatusPane;
    RzGroupBox5: TRzGroupBox;
    edCommentDelete: TRzDBMemo;
    RzGroupBox6: TRzGroupBox;
    edComment: TRzDBMemo;
    DSF: TUniDataSource;
    DSC: TUniDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btFeedCancelClick(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure btFeedCompleteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmFeedbackDelete: TfmFeedbackDelete;
  DS_Contacts: TDataSet;
  DS_Feedback: TDataSet;

implementation

{$R *.dfm}

uses form_feedback, SystemUnit, datamodule;

procedure TfmFeedbackDelete.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfmFeedbackDelete.btFeedCancelClick(Sender: TObject);
begin
  // Закрываем заявку как отмененную
  with DS_Feedback do begin
    Edit;
    FieldByName('feed_date_close').AsDateTime:=Now;
    FieldByName('feed_user_close').AsInteger:=CurrUserId;
    FieldByName('feed_status').AsInteger:=2;
    Post;
  end;
  Close;
end;

procedure TfmFeedbackDelete.btFeedCompleteClick(Sender: TObject);
begin
  // Применяем изменения
  with DS_Contacts do begin
    Edit;
    FieldByName('cont_is_delete').AsInteger:=1;
    FieldByName('cont_date_change').AsDateTime:=Now;
    Post;
  end;
  // Закрываем заявку как выполненую
  with DS_Feedback do begin
    Edit;
    FieldByName('feed_date_close').AsDateTime:=Now;
    FieldByName('feed_user_close').AsInteger:=CurrUserId;
    FieldByName('feed_status').AsInteger:=1;

    ModuleDB.SYSP.Edit;
    ModuleDB.SYSP.FieldByName('date_last_change').AsDateTime:=Now;
    ModuleDB.SYSP.Post;

    Post;
  end;
  Close;
end;

procedure TfmFeedbackDelete.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TfmFeedbackDelete.FormCreate(Sender: TObject);
begin
  DS_Contacts:=DBC.DataSource.DataSet;
  DS_Feedback:=DBF.DataSource.DataSet;
  DS_Contacts.Locate('cont_id',DS_Feedback.FieldByName('feed_cont_id').AsString,[]);

  if DS_Feedback.FieldByName('feed_status').AsInteger<>0 then begin
    btFeedComplete.Enabled:=false;
    btFeedCancel.Enabled:=false;
    edCommentDelete.ReadOnly:=true;
    edComment.ReadOnly:=true;
  end;

end;

end.
