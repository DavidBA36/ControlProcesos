unit udatos;

interface

uses
  System.SysUtils, System.Classes, FMX.Types, FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.FMXUI.Wait, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, System.IniFiles, System.Win.Registry, Winapi.Windows, system.Variants,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB, Data.DB, FireDAC.Comp.Client,
  FireDAC.Comp.UI, FireDAC.Phys.IBBase,
  FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.Comp.ScriptCommands, FireDAC.Stan.Util, FireDAC.Comp.Script,
  System.Notification,system.TypInfo,
  FireDAC.FMXUI.Error,
  FMX.Dialogs;

type
  TDatos = class(TDataModule)
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDConnection1: TFDConnection;
    FDEventAlerter1: TFDEventAlerter;
    NotificationCenter1: TNotificationCenter;
    FDGUIxErrorDialog1: TFDGUIxErrorDialog;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure FDEventAlerter1Alert(ASender: TFDCustomEventAlerter; const AEventName: string; const AArgument: Variant);
  private
    { Private declarations }
  public
    function FindItemParent(obj: TFmxObject; ParentClass: TClass): TFmxObject;
    procedure SavePropertyOnReg(Key, Propiedad: String; Value: Variant);
    function ReadPropertyFromReg(Key, Propiedad: String): Variant;
  end;

var
  Datos: TDatos;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}
{$R *.dfm}

uses uPrincipal;

function TDatos.ReadPropertyFromReg(Key, Propiedad: String): Variant;
var
  Reg: TRegistry;
  Tipo: TRegDataType;
begin
  Result := False;
  Reg := TRegistry.Create(KEY_READ or KEY_WRITE);
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey(Key, False) then
    begin
      Tipo := Reg.GetDataType(Propiedad);
      if Tipo = rdInteger then
        Result := Reg.ReadInteger(Propiedad);
      if Tipo = rdString then
        Result := Reg.ReadString(Propiedad);
      Reg.CloseKey;
    end;
  finally
    Reg.Free;
  end;
end;

procedure TDatos.SavePropertyOnReg(Key, Propiedad: String; Value: Variant);
var
  Reg: TRegistry;
  PropInfo: TPropInfo;
  Tipo: Word;
begin
  Reg := TRegistry.Create(KEY_READ or KEY_WRITE);
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey(Key, True) then
    begin
      Tipo := VarType(Value) and varTypeMask;
      if Tipo = varBoolean then
        Reg.WriteBool(Propiedad, Value)
      else if Tipo = varInteger then
        Reg.WriteInteger(Propiedad, Value)
      else if (Tipo = varString) or (Tipo = varUString) then
        Reg.WriteString(Propiedad, Value);
      Reg.CloseKey;
    end;
  finally
    Reg.Free;
  end;
end;

procedure TDatos.DataModuleCreate(Sender: TObject);
begin
  FDPhysFBDriverLink1.VendorHome := '';
  FDConnection1.params.Values['Database'] := '/virtual/datos/ControlProcesos.fdb';
  FDConnection1.params.Values['User_Name'] := 'SYSDBA';
  FDConnection1.params.Values['Password'] := 'masterkey';
  FDConnection1.params.Values['Server'] := '192.168.1.202'; //192.168.32.206
  FDConnection1.params.Values['DriverID'] := 'FB';
  FDConnection1.Connected := True;



  // FDConnection2.params.Values['Database'] := '/virtual/datos/ControlProcesos.fdb';

end;

procedure TDatos.DataModuleDestroy(Sender: TObject);
begin
  FDConnection1.Connected := False;
end;

procedure TDatos.FDEventAlerter1Alert(ASender: TFDCustomEventAlerter; const AEventName: string; const AArgument: Variant);
var
  Notificacion: TNotification;
begin
  //ShowMessage(IntToStr(Integer(AArgument)));
  if CompareText(AEventName, 'PEDIDOS_NEW') = 0 then
  begin
    Notificacion := NotificationCenter1.CreateNotification;
    Notificacion.Name := 'name';
    Notificacion.AlertBody := 'Se a creado un registro';
    Notificacion.Title := 'Modificacion de registro';
    Notificacion.FireDate := now;
    NotificationCenter1.PresentNotification(Notificacion);
    Form1.Refresh;
  end
  else if CompareText(AEventName, 'PEDIDOS_EDIT') = 0 then
  begin
    Notificacion := NotificationCenter1.CreateNotification;
    Notificacion.Name := 'name';
    Notificacion.AlertBody := 'Se ha modificado un registro';
    Notificacion.Title := 'Modificacion de registro';
    Notificacion.FireDate := now;
    NotificationCenter1.PresentNotification(Notificacion);
    Form1.Refresh;
  end;
end;

function TDatos.FindItemParent(obj: TFmxObject; ParentClass: TClass): TFmxObject;
begin
  Result := nil;
  if Assigned(obj.Parent) then
    if obj.Parent.ClassType = ParentClass then
      Result := obj.Parent
    else
      Result := FindItemParent(obj.Parent, ParentClass);
end;

end.
