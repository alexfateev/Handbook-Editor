unit SystemUnit;

interface

uses Winapi.Windows, Vcl.Forms, System.SysUtils, Data.DB, RzTabs, RzCmboBx;

  procedure FillCombobox (Source: TDataSet; Control: TRzComboBox;
      f_name: string; f_id: string);

  function Encode (Password: string): string;
  procedure CreatePageForm(Pages: TRzPageControl; Form: TFormClass; FCaption: string);
  procedure CreateForm(Form: TFormClass; FCaption: string);
  function CheckAccess(iduser: integer; rule: string; showinfo: boolean = true): boolean;

  function BitToBool(bit: Byte): boolean;
  function BoolToBit(bool: boolean): Byte;

  function NormalCase(str: string): string;

  function GetContactNameSave(mode: byte; name_f: string; name_i: string;
      name_o: string; prof: string): string;

var
  MYSQLConnect: boolean = true;
  IBConnect: boolean = true;
  CurrUserId: integer = 1;
  // Параметры при запуске
  Par_CheckPassLogin: boolean = true;
  Par_HideAdmin: boolean = false;

implementation

uses datamodule, md5Hash;

procedure FillCombobox (Source: TDataSet; Control: TRzComboBox;
    f_name: string; f_id: string);
begin
  with Source do begin
    Control.Items.Clear;
    Control.Items.BeginUpdate;
    Refresh; First;
    while not Eof do begin
      Control.AddItemValue(FieldByName(f_name).AsString, FieldByName(f_id).AsString);
      Next;
    end;
    Control.Items.EndUpdate;
  end;
end;

function GetContactNameSave(mode: byte; name_f: string; name_i: string;
    name_o: string; prof: string): string;
var
  name_short, name_full: string;
begin
  if Trim(name_f)<>'' then begin
    name_short:=Trim(name_f)+' ';
    name_full:=Trim(name_f);
  end;
  if Trim(name_i)<>'' then begin
    name_short:=name_short + Trim(name_i)[1]+'.';
    name_full:=name_full +' '+ Trim(name_i);
  end;
  if Trim(name_o)<>'' then begin
    name_short:=name_short + Trim(name_o)[1]+'.';
    name_full:=name_full +' '+ Trim(name_o);
  end;
  // 1 - Краткое имя
  // 2 - Краткое имя, профессия
  // 3 - Полное имя
  // 4 - Полное имя, профессия
  case mode of
  1: Result:=Trim(name_short);
  2: Result:=Trim(name_short)+', '+Trim(prof);
  3: Result:=Trim(name_full);
  4: Result:=Trim(name_full)+', '+Trim(prof);
  end;
end;

function NormalCase(str: string): string;
begin
  Result:=AnsiUpperCase(str[1])+AnsiLowerCase(copy(str,2,length(str)-1));
end;

function BitToBool(bit: Byte): boolean;
begin
  if bit=0 then Result:=false else Result:=true;
end;

function BoolToBit(bool: boolean): Byte;
begin
  if bool then Result:=1 else Result:=0;
end;

function CheckAccess(iduser: integer; rule: string; showinfo: boolean = true): boolean;
begin
  with ModuleDB do begin
    //Если приложение запущено с параметром "HideAdmin", то даем доступ на все
    if Par_HideAdmin then begin
      Result:=true;
      Exit;
    end;

    Result:=false;
    Groups.Refresh;
    Users.Refresh;
    if not Users.Locate('user_id',iduser,[]) then Exit;
    Result:=BitToBool(Users.FieldByName(rule).AsInteger);
    if (not Result)and(showinfo) then
      Application.MessageBox('Недостаточно прав на выполнение операции.','Исключение',MB_ICONEXCLAMATION);
  end;
end;

function Encode (Password: string): string;
begin
  Result:=md5UTF8(Password);
end;

procedure CreatePageForm(Pages: TRzPageControl; Form: TFormClass; FCaption: string);
var
  NewForm: TForm;
begin
  NewForm:= Form.Create(Pages);
  NewForm.Caption:=FCaption;
  NewForm.ManualDock(Pages);
  Pages.ActivePageIndex := Pages.PageCount-1;
  NewForm.Show;
end;

procedure CreateForm(Form: TFormClass; FCaption: string);
var
  NewForm: TForm;
begin
  NewForm:= Form.Create(Application);
  NewForm.Caption:=FCaption;
  NewForm.ShowModal;
end;

end.
