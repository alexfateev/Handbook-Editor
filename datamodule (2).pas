unit datamodule;

interface

uses
  Winapi.Windows, Vcl.Forms, System.SysUtils, System.Classes, UniProvider, MySQLUniProvider, Data.DB,
  DBAccess, Uni, MemDS, RzCommon, InterBaseUniProvider, MemTableDataEh,
  DataDriverEh, MemTableEh;

type
  TModuleDB = class(TDataModule)
    ConnectionMYSQL: TUniConnection;
    MYSQL: TMySQLUniProvider;
    srcUsers: TUniDataSource;
    Groups: TUniTable;
    srcGroups: TUniDataSource;
    Users: TUniQuery;
    IniFile: TRzRegIniFile;
    ConnectionIB: TUniConnection;
    IB: TInterBaseUniProvider;
    ContactList: TUniQuery;
    srcContactList: TUniDataSource;
    memContactList: TMemTableEh;
    setContactList: TDataSetDriverEh;
    memContactListLAST_NAME: TWideStringField;
    memContactListFIRST_NAME: TWideStringField;
    memContactListMIDDLE_NAME: TWideStringField;
    memContactListDIV_NAME: TWideStringField;
    memContactListPROFESSION: TWideStringField;
    memContactListDATA_ROZHD: TDateTimeField;
    memContactListDISMISSED: TSmallintField;
    memContactListTAB_NO: TWideStringField;
    ConfigIni: TRzRegIniFile;
    SYSP: TUniTable;
    RegFile: TRzRegIniFile;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ModuleDB: TModuleDB;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses SystemUnit, form_feedback;

{$R *.dfm}

procedure TModuleDB.DataModuleCreate(Sender: TObject);
begin
  if not FileExists('Connection.ini') then begin
    IniFile.WriteString('Connection','Server','localhost');
    IniFile.WriteString('Connection','Database','khm_handbook');
    IniFile.WriteString('Connection','Port','0');
  end;

  {ConnectionIB.Server:=IniFile.ReadString('Connection2','Server','localhost');
  ConnectionIB.Database:=IniFile.ReadString('Connection2','Database','');
  ConnectionIB.Username:=IniFile.ReadString('Connection2','Username','SYSDBA');
  ConnectionIB.Password:=IniFile.ReadString('Connection2','Password','masterkey');
  }


  ConnectionMYSQL.Server:=IniFile.ReadString('Connection','Server','localhost');
  ConnectionMYSQL.Database:=IniFile.ReadString('Connection','Database','khm_handbook');
  ConnectionMYSQL.Port:=IniFile.ReadInteger('Connection','Port',0);
  ConnectionMYSQL.Username:=IniFile.ReadString('Connection','Username','User');
  ConnectionMYSQL.Password:=IniFile.ReadString('Connection','Password','bezopas');

  try
    ConnectionMYSQL.Connected:=true;
  except
    on E : Exception do begin
      Application.MessageBox(PChar(E.ClassName+' : '+E.Message),'Error',MB_ICONERROR);
      MYSQLConnect:=false;
      Exit;
    end;
  end;

  Users.Active:=MYSQLConnect;
  Groups.Active:=MYSQLConnect;
  SYSP.Active:=MYSQLConnect;

  if SYSP.Active then begin
    ConnectionIB.Server:=SYSP.FieldByName('ib_server').AsString;
    ConnectionIB.Database:=SYSP.FieldByName('ib_database').AsString;
    ConnectionIB.Username:=SYSP.FieldByName('ib_username').AsString;
    ConnectionIB.Password:=SYSP.FieldByName('ib_password').AsString;
  end;

  try
     ConnectionIB.Connected:=true;
  except
    IBConnect:=false;
  end;

  ContactList.ParamByName('dism').AsString:='1';
  ContactList.Active:=IBConnect;
  memContactList.Active:=IBConnect;

end;

procedure TModuleDB.DataModuleDestroy(Sender: TObject);
begin
  ConnectionMYSQL.Connected:=false;
  ConnectionIB.Connected:=false;
end;

end.
