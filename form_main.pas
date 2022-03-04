unit form_main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzTabs, Vcl.Menus, RzCommon, RzForms;

const
  WM_AFTER_CREATE = WM_USER + 301; // custom message

type
  TfmMain = class(TForm)
    RzPageControl1: TRzPageControl;
    FormState: TRzFormState;
    procedure FormCreate(Sender: TObject);
    procedure BuildInterface;
  private
    { Private declarations }
    procedure WmAfterCreate(var Msg: TMessage); message WM_AFTER_CREATE;
  public
    { Public declarations }
  end;

var
  fmMain: TfmMain;

implementation

{$R *.dfm}

uses form_handbook, form_admin, SystemUnit, form_login, form_feedback,
  form_email;

procedure TfmMain.WmAfterCreate(var Msg: TMessage);
begin
  //ShowMessage('WM_AFTER_CREATE received!');
  CreateForm(TfmLogin,'Авторизация');
end;

procedure TfmMain.BuildInterface;
begin
//Редактор справочника
  if CheckAccess(CurrUserId,'handb_access',false) then
    CreatePageForm(RzPageControl1,TfmHandbook,'Редактор справочника');
  //Обратная связь
  if CheckAccess(CurrUserId,'feedback_access',false) then
    CreatePageForm(RzPageControl1,TfmFeedback,'Обратная связь');
  // Электронная почта
  if CheckAccess(CurrUserId,'email_access',false) then
    CreatePageForm(RzPageControl1,TfmEmail,'Электронная почта');
  // Администрирование
  if CheckAccess(CurrUserId,'admin_access',false) then
    CreatePageForm(RzPageControl1,TfmAdmin,'Администрирование');
  if RzPageControl1.PageCount<>0 then
    RzPageControl1.ActivePageIndex:=0;
end;

procedure TfmMain.FormCreate(Sender: TObject);
var
  i : Integer;
begin
  if not MYSQLConnect then Exit;
  // Post the custom message WM_AFTER_CREATE to our form
  PostMessage(Self.Handle, WM_AFTER_CREATE, 0, 0);

  // Проверям наличие параметров при запуске
  for i := 0 to ParamCount do begin
    if ParamStr(i)='-NoCheckPass' then
      Par_CheckPassLogin:=false;
    if ParamStr(i)='-HideAdmin' then
      Par_HideAdmin:=true;

  end;

end;

end.
