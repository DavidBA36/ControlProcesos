unit uPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants, System.StrUtils, System.Generics.Collections,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Actions,
  System.Win.Registry, Winapi.Windows, System.DateUtils,
  FMX.ActnList, FMX.Menus, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts,
  System.ImageList, FMX.ImgList, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.Phys.IBWrapper, FireDAC.Phys.FB,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Phys.FBDef, FMX.ScrollBox, FMX.Memo,
  FireDAC.Comp.UI, FireDAC.Comp.Client, FireDAC.Phys.IBBase,
  Data.DB, FireDAC.Comp.DataSet, FMX.DateTimeCtrls, FMX.Edit, System.Rtti,
  System.Bindings.Outputs, FMX.Bind.Editors, Data.Bind.EngExt,
  FMX.Bind.DBEngExt, Data.Bind.Components,
  Data.Bind.DBScope, FMX.TabControl, Data.Bind.Controls, FMX.Bind.Navigator,
  FMX.ComboEdit, FMX.EditBox, FMX.SpinBox, FMX.Grid.Style, FMX.Grid,
  FMX.Bind.Grid, Data.Bind.Grid,
  FMX.ListBox, FMX.TMSLiveGridDataBinding, FMX.TMSBaseControl, FMX.TMSGridCell,
  FMX.TMSGridOptions, FMX.TMSGridData, FMX.TMSCustomGrid, FMX.TMSLiveGrid,
  Data.Bind.DBLinks,
  FMX.Bind.DBLinks, FMX.TMSPrintPreview, FMX.TMSCustomComponent, FMX.TMSPDFIO,
  FMX.TMSGridPDFIO, FMX.GridExcelIO, FMX.TMSGridRTF, FMX.UCMail, FMX.UCIdle,
  FMX.UCBase,
  FMX.UCSettings, FMX.Effects, FMX.Filter.Effects, FMX.Memo.Types, FMX.TMSPageControl, FMX.TMSCustomControl, FMX.TMSTabSet, FMX.Objects,
  FMX.TMSTaskDialog;

type
  TfrmMain = class(TForm)
  public

  end;

  TControlData = record
    Width: Single;
    Height: Single;
    Constructor Create(AWidth: Single; AHeight: Single);
  end;

  TForm1 = class(TForm)
    ImageList1: TImageList;
    FDPedidosPend: TFDQuery;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    FDUPedidosPend: TFDUpdateSQL;
    BindingsList1: TBindingsList;
    ToolBar1: TToolBar;
    ActionList1: TActionList;
    aNuevo: TAction;
    aExportar: TAction;
    aAnular1: TAction;
    aGuardar: TAction;
    aDeshacer: TAction;
    aFiltrar1: TAction;
    aEstadoEncurso: TAction;
    aEstadoFinalizado: TAction;
    aAnular2: TAction;
    aFiltrar2: TAction;
    StyleBook1: TStyleBook;
    FDPedidosFin: TFDQuery;
    Button3: TButton;
    Button5: TButton;
    TabItem3: TTabItem;
    FDAnulados: TFDQuery;
    cbAnulados: TCheckBox;
    CheckBox6: TCheckBox;
    Button12: TButton;
    Splitter1: TSplitter;
    BindSourceDB3: TBindSourceDB;
    Panel7: TPanel;
    FDPedidosCurso: TFDQuery;
    FDUPedidosCurso: TFDUpdateSQL;
    LinkGridToDataSourceBindSourceDB3: TLinkGridToDataSource;
    TMSFMXLiveGrid1: TTMSFMXLiveGrid;
    TMSFMXLiveGrid2: TTMSFMXLiveGrid;
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    Panel1: TPanel;
    ToolBar2: TToolBar;
    Button14: TButton;
    Button15: TButton;
    Button18: TButton;
    Button20: TButton;
    Panel2: TPanel;
    ToolBar3: TToolBar;
    Button22: TButton;
    Button25: TButton;
    Button27: TButton;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    TMSFMXLiveGrid3: TTMSFMXLiveGrid;
    TMSFMXLiveGrid4: TTMSFMXLiveGrid;
    BindSourceDB2: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    BindSourceDB4: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB4: TLinkGridToDataSource;
    btnDetalles: TButton;
    btnDetalles2: TButton;
    aDetalles: TAction;
    aBuscar: TAction;
    Button16: TButton;
    Button17: TButton;
    ToolBar4: TToolBar;
    btnDetalles3: TButton;
    Button28: TButton;
    ToolBar5: TToolBar;
    Button31: TButton;
    btnDetalles4: TButton;
    Button34: TButton;
    Button23: TButton;
    btnClose: TButton;
    GridPanelLayout1: TGridPanelLayout;
    GridPanelLayout2: TGridPanelLayout;
    Button6: TButton;
    Button7: TButton;
    ComboBox2: TComboBox;
    Label4: TLabel;
    Button11: TButton;
    GridPanelLayout3: TGridPanelLayout;
    Button9: TButton;
    Button10: TButton;
    ComboBox4: TComboBox;
    Label3: TLabel;
    Button13: TButton;
    GridPanelLayout4: TGridPanelLayout;
    Button4: TButton;
    Button8: TButton;
    ComboBox3: TComboBox;
    Label2: TLabel;
    Button19: TButton;
    Layout1: TLayout;
    DateEdit2: TDateEdit;
    ComboEdit2: TComboEdit;
    Layout2: TLayout;
    DateEdit4: TDateEdit;
    ComboEdit3: TComboEdit;
    Layout3: TLayout;
    DateEdit3: TDateEdit;
    ComboEdit1: TComboEdit;
    Layout4: TLayout;
    DateEdit1: TDateEdit;
    ComboEdit4: TComboEdit;
    Panel3: TPanel;
    Layout5: TLayout;
    Button21: TButton;
    Memo1: TMemo;
    Label5: TLabel;
    Memo3: TMemo;
    Label6: TLabel;
    GridPanelLayout5: TGridPanelLayout;
    Splitter2: TSplitter;
    Panel4: TPanel;
    Layout6: TLayout;
    Button24: TButton;
    GridPanelLayout6: TGridPanelLayout;
    Label8: TLabel;
    Memo4: TMemo;
    Splitter4: TSplitter;
    Panel5: TPanel;
    Layout7: TLayout;
    Button26: TButton;
    GridPanelLayout7: TGridPanelLayout;
    Label7: TLabel;
    Memo2: TMemo;
    Panel6: TPanel;
    Layout8: TLayout;
    Button29: TButton;
    GridPanelLayout8: TGridPanelLayout;
    Label9: TLabel;
    Memo5: TMemo;
    Splitter3: TSplitter;
    Splitter5: TSplitter;
    Button30: TButton;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    LinkControlToField5: TLinkControlToField;
    Button32: TButton;
    Button33: TButton;
    Button37: TButton;
    Button38: TButton;
    TMSFMXGridExcelIO1: TTMSFMXGridExcelIO;
    TMSFMXGridRTFIO1: TTMSFMXGridRTFIO;
    TMSFMXGridPDFIO1: TTMSFMXGridPDFIO;
    Button35: TButton;
    Button36: TButton;
    Button39: TButton;
    Button40: TButton;
    Button41: TButton;
    Timer2: TTimer;
    Transaction: TFDTransaction;
    FDQuery1: TFDQuery;
    FMXUserControl1: TFMXUserControl;
    FMXUCSettings1: TFMXUCSettings;
    FMXUCControls1: TFMXUCControls;
    FMXMailUserControl1: TFMXMailUserControl;
    Action1: TAction;
    aPermisos: TAction;
    aCambioPass: TAction;
    aCerrarSesion: TAction;
    StatusBar1: TStatusBar;
    Label10: TLabel;
    lbUsuario: TLabel;
    Label11: TLabel;
    lbEmpresa: TLabel;
    FDQuery2: TFDQuery;
    TabItem5: TTabItem;
    TabItem6: TTabItem;
    Memo6: TMemo;
    TMSFMXLiveGrid5: TTMSFMXLiveGrid;
    GridPanelLayout9: TGridPanelLayout;
    Button49: TButton;
    Button50: TButton;
    ComboBox5: TComboBox;
    Label12: TLabel;
    Button51: TButton;
    Layout9: TLayout;
    DateEdit5: TDateEdit;
    ComboEdit5: TComboEdit;
    Panel9: TPanel;
    Layout10: TLayout;
    Button52: TButton;
    GridPanelLayout10: TGridPanelLayout;
    Label13: TLabel;
    Memo7: TMemo;
    Label14: TLabel;
    Memo8: TMemo;
    Panel10: TPanel;
    TMSFMXLiveGrid6: TTMSFMXLiveGrid;
    GridPanelLayout11: TGridPanelLayout;
    Button53: TButton;
    Button54: TButton;
    ComboBox6: TComboBox;
    Label15: TLabel;
    Button55: TButton;
    Layout11: TLayout;
    DateEdit6: TDateEdit;
    ComboEdit6: TComboEdit;
    Panel11: TPanel;
    Layout12: TLayout;
    Button56: TButton;
    Splitter7: TSplitter;
    ToolBar7: TToolBar;
    Button59: TButton;
    Button61: TButton;
    Button62: TButton;
    Button63: TButton;
    GridPanelLayout12: TGridPanelLayout;
    Label17: TLabel;
    Memo10: TMemo;
    FMXUCIdle1: TFMXUCIdle;
    BindSourceDB5: TBindSourceDB;
    FDUMuestras: TFDUpdateSQL;
    FDMuestras: TFDQuery;
    FDRepos: TFDQuery;
    BindSourceDB6: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB5: TLinkGridToDataSource;
    LinkControlToField6: TLinkControlToField;
    LinkControlToField7: TLinkControlToField;
    LinkGridToDataSourceBindSourceDB6: TLinkGridToDataSource;
    LinkControlToField8: TLinkControlToField;
    PCtrl: TTMSFMXPageControl;
    TMSFMXPageControl1Page0: TTMSFMXPageControlContainer;
    TMSFMXPageControl1Page1: TTMSFMXPageControlContainer;
    Label16: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    RectangleC: TRectangle;
    Splitter6: TSplitter;
    TaskDialog: TTMSFMXTaskDialog;
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    Rectangle3: TRectangle;
    Rectangle4: TRectangle;
    Rectangle5: TRectangle;
    Rectangle6: TRectangle;
    Rectangle7: TRectangle;
    Rectangle8: TRectangle;
    Rectangle9: TRectangle;
    PopupMenu1: TPopupMenu;
    MenuItem1: TMenuItem;
    TabItem4: TTabItem;
    GridPanelLayout13: TGridPanelLayout;
    Button43: TButton;
    Button44: TButton;
    ComboBox7: TComboBox;
    Label23: TLabel;
    Button45: TButton;
    Layout13: TLayout;
    DateEdit7: TDateEdit;
    ComboEdit7: TComboEdit;
    TMSFMXLiveGrid7: TTMSFMXLiveGrid;
    ToolBar6: TToolBar;
    Button47: TButton;
    Button48: TButton;
    Button57: TButton;
    Button58: TButton;
    FDHistorico: TFDQuery;
    FDUHistorico: TFDUpdateSQL;
    BindSourceDB7: TBindSourceDB;
    procedure aNuevoExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TabControl1Change(Sender: TObject);
    procedure aGuardarExecute(Sender: TObject);
    procedure aDeshacerExecute(Sender: TObject);
    procedure cbAnuladosChange(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure ComboBoxChange(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure CheckBox6Change(Sender: TObject);
    procedure aEstadoEncursoExecute(Sender: TObject);
    procedure FDPedidosPendAfterEdit(DataSet: TDataSet);
    procedure TMSFMXLiveGrid1ColumnSorted(Sender: TObject; ACol: Integer; Direction: TSortDirection);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure aEstadoFinalizadoExecute(Sender: TObject);
    procedure aAnular1Execute(Sender: TObject);
    procedure TMSFMXLiveGrid2ColumnSorted(Sender: TObject; ACol: Integer; Direction: TSortDirection);
    procedure aAnular2Execute(Sender: TObject);
    procedure TMSFMXLiveGrid4ColumnSorted(Sender: TObject; ACol: Integer; Direction: TSortDirection);
    procedure TMSFMXLiveGrid3ColumnSorted(Sender: TObject; ACol: Integer; Direction: TSortDirection);
    procedure btnCloseFinderClick(Sender: TObject);
    procedure btnOpenFinderClick(Sender: TObject);
    procedure btnOpenDetallesClick(Sender: TObject);
    procedure btnClosseDetallesClick(Sender: TObject);
    procedure Button30Click(Sender: TObject);
    procedure Button32Click(Sender: TObject);
    procedure TMSFMXLiveGrid1GetCellLayout(Sender: TObject; ACol, ARow: Integer; ALayout: TTMSFMXGridCellLayout; ACellState: TCellState);
    procedure TMSFMXLiveGrid1ColumnSized(Sender: TObject; ACol: Integer; NewWidth: Single);
    procedure FormCreate(Sender: TObject);
    procedure TMSFMXLiveGrid2ColumnSized(Sender: TObject; ACol: Integer; NewWidth: Single);
    procedure TMSFMXLiveGrid4ColumnSized(Sender: TObject; ACol: Integer; NewWidth: Single);
    procedure TMSFMXLiveGrid3ColumnSized(Sender: TObject; ACol: Integer; NewWidth: Single);
    procedure Timer2Timer(Sender: TObject);
    procedure TransactionAfterStartTransaction(Sender: TObject);
    procedure FMXUserControl1Debug(DebugMessage: string);
    procedure FMXUserControl1LoginError(Sender: TObject; Usuario, Senha: string);
    procedure Button41Click(Sender: TObject);
    procedure FMXUserControl1LoginSucess(Sender: TObject; IdUser: Integer; Usuario, Nome, Senha, Email: string; Privileged: Boolean);
    procedure TMSFMXLiveGrid5ColumnSized(Sender: TObject; ACol: Integer; NewWidth: Single);
    procedure TMSFMXLiveGrid5ColumnSorted(Sender: TObject; ACol: Integer; Direction: TSortDirection);
    procedure TMSFMXLiveGrid1GetCellClass(Sender: TObject; ACol, ARow: Integer; var CellClassType: TFmxObjectClass);
    procedure TMSFMXLiveGrid1ColumnSize(Sender: TObject; ACol: Integer; var NewWidth: Single);
    procedure TMSFMXLiveGrid6ColumnSized(Sender: TObject; ACol: Integer; NewWidth: Single);
    procedure TMSFMXLiveGrid6ColumnSorted(Sender: TObject; ACol: Integer; Direction: TSortDirection);
    procedure MenuItem1Click(Sender: TObject);
  private
    Grid1ColumnsWidth: array of Single;
    Grid2ColumnsWidth: array of Single;
    Grid3ColumnsWidth: array of Single;
    Grid4ColumnsWidth: array of Single;
    Grid5ColumnsWidth: array of Single;
    Grid6ColumnsWidth: array of Single;
    procedure SaveUserPreferences;
    procedure LoadUserPreferences;
    procedure ClearUserPreferences;
    procedure CambiarEstado;
  public
    function CanShow: Boolean; override;
    procedure Refresh;
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

uses uDatos, uSelectorColumnas;

function TForm1.CanShow: Boolean;
begin
  result := false;
  if Assigned(FMXUserControl1.CurrentUser) and (FMXUserControl1.CurrentUser.UserID <> 0) then
    result := true;
end;

procedure SetArray(var A: array of Single; Value: Single);
var
  i: Integer;
begin
  for i := 0 to Length(A) - 1 do
    A[i] := Value;
end;

Constructor TControlData.Create(AWidth: Single; AHeight: Single);
begin
  Width := AWidth;
  Height := AHeight;
end;

procedure SaveGridPreferences(Grid: TTMSFMXLiveGrid);
var
  i: Integer;
  Reg: TRegistry;
begin
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    Reg.OpenKey('Software\Emite\GestionPedidos\FPrincipal\' + Grid.Name + '_Columns', true);
    Reg.WriteInteger('Count', Grid.Columns.Count);
    Reg.CloseKey;
    for i := 0 to Grid.Columns.Count - 1 do
    begin
      Reg.OpenKey('Software\Emite\GestionPedidos\FPrincipal\' + Grid.Name + '_Columns\Item' + IntToStr(i), true);
      Reg.WriteFloat('Width', Grid.Columns.Items[i].Width);
      Reg.WriteBool('Visible', not Grid.IsHiddenColumn(i));
      Reg.CloseKey;
    end;
  finally
    Reg.Free;
  end;
end;

procedure SaveControlPreferences(Control: TControl);
var
  Reg: TRegistry;
begin
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    Reg.OpenKey('Software\Emite\GestionPedidos\FPrincipal\' + Control.Name, true);
    Reg.WriteFloat('Width', Control.Width);
    Reg.WriteFloat('Height', Control.Height);
    Reg.CloseKey;
  finally
    Reg.Free;
  end;
end;

procedure LoadGridPreferences(var GridColumnsWidth: array of Single; Grid: TTMSFMXLiveGrid);
var
  i: Integer;
  Reg: TRegistry;
begin
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    // Reg.OpenKey('Software\Emite\GestionPedidos\FPrincipal\' + Grid.Name + '_Columns', True);
    // Reg.WriteInteger('Count', Grid.Columns.Count);

    for i := 2 to Grid.Columns.Count - 1 do
    begin
      if Reg.KeyExists('Software\Emite\GestionPedidos\FPrincipal\' + Grid.Name + '_Columns\Item' + IntToStr(i)) then
      begin
        Reg.OpenKey('Software\Emite\GestionPedidos\FPrincipal\' + Grid.Name + '_Columns\Item' + IntToStr(i), true);
        Grid.Columns.Items[i].Width := Reg.ReadFloat('Width');
        GridColumnsWidth[i] := Grid.Columns.Items[i].Width;
        if not Reg.ReadBool('Visible') then
          Grid.HideColumn(i);
        Reg.CloseKey;
      end;
    end;
  finally
    Reg.Free;
  end;
end;

procedure LoadControlPreferences(Control: TControl; Default: TControlData);
var
  Reg: TRegistry;
begin
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    Control.Width := Default.Width;
    Control.Height := Default.Height;
    if Reg.KeyExists('Software\Emite\GestionPedidos\FPrincipal\' + Control.Name) then
    begin
      Reg.OpenKey('Software\Emite\GestionPedidos\FPrincipal\' + Control.Name, true);
      Control.Width := Reg.ReadFloat('Width');
      Control.Height := Reg.ReadFloat('Height');
      Reg.CloseKey;
    end;
  finally
    Reg.Free;
  end;
end;

procedure TForm1.SaveUserPreferences;
begin
  SaveGridPreferences(TMSFMXLiveGrid1);
  SaveGridPreferences(TMSFMXLiveGrid2);
  SaveGridPreferences(TMSFMXLiveGrid3);
  SaveGridPreferences(TMSFMXLiveGrid4);
  SaveGridPreferences(TMSFMXLiveGrid5);
  SaveGridPreferences(TMSFMXLiveGrid6);
  SaveControlPreferences(Panel1);
  SaveControlPreferences(Panel3);
  SaveControlPreferences(Panel4);
  SaveControlPreferences(Panel5);
  SaveControlPreferences(Panel6);
  SaveControlPreferences(Panel9);
  SaveControlPreferences(Panel11);
end;

procedure TForm1.LoadUserPreferences;
begin
  LoadGridPreferences(Grid1ColumnsWidth, TMSFMXLiveGrid1);
  LoadGridPreferences(Grid2ColumnsWidth, TMSFMXLiveGrid2);
  LoadGridPreferences(Grid3ColumnsWidth, TMSFMXLiveGrid3);
  LoadGridPreferences(Grid4ColumnsWidth, TMSFMXLiveGrid4);
  LoadGridPreferences(Grid5ColumnsWidth, TMSFMXLiveGrid5);
  LoadGridPreferences(Grid6ColumnsWidth, TMSFMXLiveGrid6);
  LoadControlPreferences(Panel1, TControlData.Create(590, 0));
  LoadControlPreferences(Panel3, TControlData.Create(0, 200));
  LoadControlPreferences(Panel4, TControlData.Create(0, 200));
  LoadControlPreferences(Panel5, TControlData.Create(0, 200));
  LoadControlPreferences(Panel6, TControlData.Create(0, 200));
  LoadControlPreferences(Panel9, TControlData.Create(0, 200));
  LoadControlPreferences(Panel11, TControlData.Create(0, 200));
end;

procedure TForm1.MenuItem1Click(Sender: TObject);
begin
  TTMSFMXLiveGrid(PopupMenu1.PopupComponent).AutoSizeColumns();
  TTMSFMXLiveGrid(PopupMenu1.PopupComponent).ColumnWidths[0] := 26;
  TTMSFMXLiveGrid(PopupMenu1.PopupComponent).ColumnWidths[1] := 26;
end;

procedure TForm1.ClearUserPreferences;
var
  Reg: TRegistry;
  i: Integer;
begin
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    Reg.DeleteKey('Software\Emite\GestionPedidos');
    Reg.CloseKey;
  finally
    Reg.Free;
  end;
  for i := 2 to TMSFMXLiveGrid1.Columns.Count - 1 do
  begin
    TMSFMXLiveGrid1.Columns.Items[i].Width := 68;
    TMSFMXLiveGrid1.UnHideColumn(i);
  end;
  for i := 2 to TMSFMXLiveGrid2.Columns.Count - 1 do
  begin
    TMSFMXLiveGrid2.Columns.Items[i].Width := 68;
    TMSFMXLiveGrid2.UnHideColumn(i);
  end;
  for i := 2 to TMSFMXLiveGrid3.Columns.Count - 1 do
  begin
    TMSFMXLiveGrid3.Columns.Items[i].Width := 68;
    TMSFMXLiveGrid3.UnHideColumn(i);
  end;
  for i := 2 to TMSFMXLiveGrid4.Columns.Count - 1 do
  begin
    TMSFMXLiveGrid4.Columns.Items[i].Width := 68;
    TMSFMXLiveGrid4.UnHideColumn(i);
  end;
  for i := 2 to TMSFMXLiveGrid5.Columns.Count - 1 do
  begin
    TMSFMXLiveGrid5.Columns.Items[i].Width := 68;
    TMSFMXLiveGrid5.UnHideColumn(i);
  end;
  for i := 2 to TMSFMXLiveGrid6.Columns.Count - 1 do
  begin
    TMSFMXLiveGrid6.Columns.Items[i].Width := 68;
    TMSFMXLiveGrid6.UnHideColumn(i);
  end;
  SetArray(Grid1ColumnsWidth, 68);
  SetArray(Grid2ColumnsWidth, 68);
  SetArray(Grid3ColumnsWidth, 68);
  SetArray(Grid4ColumnsWidth, 68);
  SetArray(Grid5ColumnsWidth, 68);
  SetArray(Grid6ColumnsWidth, 68);
  Panel3.Height := 200;
  Panel4.Height := 200;
  Panel5.Height := 200;
  Panel6.Height := 200;
  Panel9.Height := 200;
  Panel11.Height := 200;
  Panel1.Height := 600;
end;

procedure TForm1.aAnular1Execute(Sender: TObject);
var
  Mensage: string;
begin
  case PCtrl.ActivePageIndex of
    0:
      begin
        Mensage := '¿Desea realmente enular el pedido ' + FDPedidosPend.FieldByName('PEDIDO_INTERNO').AsString + ' ?';
        if MessageDlg(Mensage, TMsgDlgType.mtConfirmation, mbYesNo, 0) = mrYes then
        begin
          FDPedidosPend.Edit;
          FDPedidosPend.FieldByName('ANULADO').AsDateTime := now;
          FDPedidosPend.Post;
          TabControl1Change(TabControl1);
        end;
      end;
    1:
      begin
        Mensage := '¿Desea realmente enular el pedido ' + FDMuestras.FieldByName('PEDIDO_INTERNO').AsString + ' ?';
        if MessageDlg(Mensage, TMsgDlgType.mtConfirmation, mbYesNo, 0) = mrYes then
        begin
          FDMuestras.Edit;
          FDMuestras.FieldByName('ANULADO').AsDateTime := now;
          FDMuestras.Post;
          TabControl1Change(TabControl1);
        end;
      end;
  end;

end;

procedure TForm1.aAnular2Execute(Sender: TObject);
var
  Mensage: string;
begin
  Mensage := '¿Desea realmente enular el pedido ' + FDPedidosCurso.FieldByName('PEDIDO_INTERNO').AsString + ' ?';
  if MessageDlg(Mensage, TMsgDlgType.mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    FDPedidosCurso.Edit;
    FDPedidosCurso.FieldByName('ANULADO').AsDateTime := now;
    FDPedidosCurso.Post;
    TabControl1Change(TabControl1);
  end;

end;

procedure TForm1.aDeshacerExecute(Sender: TObject);
begin
  Transaction.Rollback;
  TabControl1Change(TabControl1);
  aGuardar.Enabled := false;
  aDeshacer.Enabled := false;
end;

procedure TForm1.aGuardarExecute(Sender: TObject);
var
  oExc: EFDDBEngineException;
  LastIndex: Integer;
begin
  try
    if FDPedidosPend.State in [dsInsert, dsEdit] then
    begin
      LastIndex := FDPedidosPend.FieldByName('CLAVE').AsInteger;
      FDPedidosPend.Post;
      FDPedidosPend.Refresh;
      FDPedidosPend.Locate('CLAVE', LastIndex, []);
    end;
    if FDMuestras.State in [dsInsert, dsEdit] then
    begin
      LastIndex := FDMuestras.FieldByName('CLAVE').AsInteger;
      FDMuestras.Post;
      FDMuestras.Refresh;
      FDMuestras.Locate('CLAVE', LastIndex, []);
    end;
    if FDPedidosCurso.State in [dsInsert, dsEdit] then
    begin
      LastIndex := FDPedidosCurso.FieldByName('CLAVE').AsInteger;
      FDPedidosCurso.Post;
      FDPedidosCurso.Refresh;
      FDPedidosCurso.Locate('CLAVE', LastIndex, []);
    end;
    Transaction.Commit;
    TabControl1Change(TabControl1);
    aGuardar.Enabled := false;
    aDeshacer.Enabled := false;
  except
    on E: Exception do
    begin
      if E is EIBNativeException then
      begin
        oExc := EFDDBEngineException(E);
        if oExc.Kind = ekRecordLocked then
          oExc.Message := 'El registro que intenta modificar esta bloqueado en este momento por otro usuario. Intentelo mas tarde';
      end;
    end;
  end;
end;

procedure TForm1.aEstadoEncursoExecute(Sender: TObject);
var
  Mensage: String;
begin
  Mensage := '¿Desea realmente cambia el estado del pedido ' + FDPedidosPend.FieldByName('PEDIDO_INTERNO').AsString + ' a EN CURSO?';
  if MessageDlg(Mensage, TMsgDlgType.mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    FDPedidosPend.Edit;

    case PCtrl.ActivePageIndex of
      0:
        FDPedidosPend.FieldByName('ESTADO').AsInteger := 1;
      1:
        FDPedidosPend.FieldByName('ESTADO').AsInteger := 4;
    end;

    FDPedidosPend.Post;
    FDPedidosPend.Refresh;
    FDPedidosCurso.Refresh;
  end;
end;

procedure TForm1.aNuevoExecute(Sender: TObject);
var
  DataSet: TFDQuery;
  Estado: Integer;
begin

  case PCtrl.ActivePageIndex of
    0:
      begin
        DataSet := FDPedidosPend;
        Estado := 0;
      end;
    1:
      begin
        DataSet := FDMuestras;
        Estado := 3
      end;
  end;

  if DataSet.State in [dsInactive] then
    DataSet.Open;
  DataSet.Append;
  DataSet.FieldByName('CLAVE_USUARIO').AsInteger := FMXUserControl1.CurrentUser.UserID;
  DataSet.FieldByName('CLAVE_EMPRESA').AsInteger := FMXUserControl1.CurrentUser.Empresa;
  DataSet.FieldByName('PLEGADO').AsString := 'FALSE';
  DataSet.FieldByName('URGENTE').AsString := 'FALSE';
  DataSet.FieldByName('REPOSICION').AsString := 'FALSE';
  DataSet.FieldByName('TRATAMIENTOS').AsString := 'FALSE';
  DataSet.FieldByName('LISTO').AsString := 'FALSE';
  DataSet.FieldByName('PEDIDO_INTERNO').AsString := '-';
  DataSet.FieldByName('OFERTA').AsString := '2020-';
  DataSet.FieldByName('TRANSPORTE').AsString := 'INTERNO';
  DataSet.FieldByName('FENTRADA').AsDateTime := System.SysUtils.Date;
  DataSet.FieldByName('FENTREGA').AsDateTime := incday(System.SysUtils.Date, 5);
  DataSet.FieldByName('ESTADO').AsInteger := Estado;
  DataSet.Post;

  FDHistorico.Append;
  FDHistorico.FieldByName('CLAVE_USUARIO').AsInteger := FMXUserControl1.CurrentUser.UserID;
  FDHistorico.FieldByName('CLAVE_EMPRESA').AsInteger := FMXUserControl1.CurrentUser.Empresa;
  FDHistorico.FieldByName('FECHA_HORA').AsDateTime := now;
  FDHistorico.FieldByName('ACCION').AsString := 'CREACION';

end;

procedure TForm1.cbAnuladosChange(Sender: TObject);
begin
  TabControl1.Tabs[3].Visible := cbAnulados.IsChecked;

  if cbAnulados.IsChecked then
  begin
    TabControl1.TabIndex := 3;
    TabControl1Change(TabControl1);
  end
  else
    TabControl1.TabIndex := 0;
end;

procedure TForm1.CheckBox6Change(Sender: TObject);
begin
  Timer2.Enabled := CheckBox6.IsChecked;
end;

procedure TForm1.ComboBoxChange(Sender: TObject);
var
  edtDate: TDateEdit;
  edtCombo: TComboEdit;
begin
  case TComboBox(Sender).tag of
    0:
      begin
        edtDate := DateEdit3;
        edtCombo := ComboEdit1;
      end;
    1:
      begin
        edtDate := DateEdit1;
        edtCombo := ComboEdit4;
      end;
    2:
      begin
        edtDate := DateEdit4;
        edtCombo := ComboEdit3;
      end;
    3:
      begin
        edtDate := DateEdit2;
        edtCombo := ComboEdit2;
      end;
    4:
      begin
        edtDate := DateEdit5;
        edtCombo := ComboEdit5;
      end;
    5:
      begin
        edtDate := DateEdit5;
        edtCombo := ComboEdit5;
      end;
  end;

  edtCombo.Visible := false;
  edtCombo.Clear;
  edtDate.Visible := false;

  case TComboBox(Sender).ItemIndex of
    0 .. 5:
      begin
        edtCombo.Visible := true;
        if TComboBox(Sender).ItemIndex = 3 then
        begin
          edtCombo.Items.Add('INTERNO');
          edtCombo.Items.Add('EXTERNO');
          edtCombo.ItemIndex := 0;
        end;
      end;
    6, 7:
      begin
        edtDate.Visible := true;
      end;
  end;

end;

procedure TForm1.btnCloseFinderClick(Sender: TObject);
begin
  case TButton(Sender).tag of
    0:
      GridPanelLayout2.Height := 0;
    1:
      GridPanelLayout1.Height := 0;
    2:
      GridPanelLayout3.Height := 0;
    3:
      GridPanelLayout4.Height := 0;
    4:
      GridPanelLayout9.Height := 0;
    5:
      GridPanelLayout11.Height := 0;
  end;
end;

procedure TForm1.btnOpenDetallesClick(Sender: TObject);
begin
  case TButton(Sender).tag of
    0:
      begin
        case PCtrl.ActivePageIndex of
          0:
            begin
              Panel3.Visible := true;
              Splitter2.Visible := true;
              Splitter2.Position.Y := Panel3.Position.Y - 3;
            end;
          1:
            begin
              Panel9.Visible := true;
              Splitter6.Visible := true;
              Splitter6.Position.Y := Panel9.Position.Y - 3;
            end;
        end;

      end;
    1:
      begin
        Panel4.Visible := true;
        Splitter4.Visible := true;
        Splitter4.Position.Y := Panel4.Position.Y - 3;
      end;
    2:
      begin
        Panel5.Visible := true;
        Splitter1.Visible := true;
        Splitter1.Position.Y := Panel5.Position.Y - 3;
      end;
    3:
      begin
        Panel6.Visible := true;
        Splitter3.Visible := true;
        Splitter3.Position.Y := Panel6.Position.Y - 3;
      end;
    4:
      begin
        Panel11.Visible := true;
        Splitter7.Visible := true;
        Splitter7.Position.Y := Panel11.Position.Y - 3;
      end;
  end;
end;

procedure TForm1.btnOpenFinderClick(Sender: TObject);
begin
  case TButton(Sender).tag of
    0:
      begin
        case PCtrl.ActivePageIndex of
          0:
            GridPanelLayout2.Height := 35;
          1:
            GridPanelLayout9.Height := 35;
        end;
      end;
    1:
      GridPanelLayout1.Height := 35;
    2:
      GridPanelLayout3.Height := 35;
    3:
      GridPanelLayout4.Height := 35;
  end;
end;

procedure TForm1.btnClosseDetallesClick(Sender: TObject);
begin
  case TButton(Sender).tag of
    0:
      begin
        Splitter2.Visible := false;
        Panel3.Visible := false;
      end;
    1:
      begin
        Splitter4.Visible := false;
        Panel4.Visible := false;
      end;
    2:
      begin
        Splitter1.Visible := false;
        Panel5.Visible := false;
      end;
    3:
      begin
        Splitter3.Visible := false;
        Panel6.Visible := false;
      end;
    4:
      begin
        Splitter6.Visible := false;
        Panel9.Visible := false;
      end;
    5:
      begin
        Splitter7.Visible := false;
        Panel11.Visible := false;
      end;
  end;
end;

procedure TForm1.Button30Click(Sender: TObject);
begin
  if MessageDlg('¿Desea BORRAR las preferencias de usuario?', TMsgDlgType.mtConfirmation, mbYesNo, 0) = mrYes then
    ClearUserPreferences;
end;

procedure TForm1.Button32Click(Sender: TObject);
begin
  case TButton(Sender).tag of
    0:
      begin

        if not Assigned(FSelectorColumas) then
        begin
          case PCtrl.ActivePageIndex of
            0:
              begin
                FSelectorColumas := TFSelectorColumas.CreateWithGrid(Self, TMSFMXLiveGrid1);
                FSelectorColumas.Caption := 'Selector de columnas tabla: Pedidos pendientes'
              end;
            1:
              begin
                FSelectorColumas := TFSelectorColumas.CreateWithGrid(Self, TMSFMXLiveGrid5);
                FSelectorColumas.Caption := 'Selector de columnas tabla: Pedidos de muestra'
              end;
          end;
        end;;
        FSelectorColumas.ShowModal;
      end;
    1:
      begin
        if not Assigned(FSelectorColumas) then
          FSelectorColumas := TFSelectorColumas.CreateWithGrid(Self, TMSFMXLiveGrid2);
        FSelectorColumas.Caption := 'Selector de columnas tabla: Pedidos en Curso';
        FSelectorColumas.ShowModal;
      end;
    2:
      begin
        if not Assigned(FSelectorColumas) then
          FSelectorColumas := TFSelectorColumas.CreateWithGrid(Self, TMSFMXLiveGrid4);
        FSelectorColumas.Caption := 'Selector de columnas tabla: Pedidos Finalizados';
        FSelectorColumas.ShowModal;
      end;
    3:
      begin
        if not Assigned(FSelectorColumas) then
          FSelectorColumas := TFSelectorColumas.CreateWithGrid(Self, TMSFMXLiveGrid3);
        FSelectorColumas.Caption := 'Selector de columnas tabla: Pedidos Anulados';
        FSelectorColumas.ShowModal;
      end;

  end;
end;

procedure TForm1.Button41Click(Sender: TObject);
begin
  TMSFMXGridPDFIO1.Save('d:\PDF.pdf');
  TMSFMXGridRTFIO1.ExportRTF('d:\documento.rtf');
end;

procedure TForm1.Button6Click(Sender: TObject);
var
  Campo: String;
  Operador: String;
  Value: String;
  Filtro: String;
  edtDate: TDateEdit;
  edtCombo: TComboEdit;
  combo: TComboBox;
begin
  case TButton(Sender).tag of
    0:
      begin
        edtDate := DateEdit3;
        edtCombo := ComboEdit1;
        combo := ComboBox2;
      end;
    1:
      begin
        edtDate := DateEdit1;
        edtCombo := ComboEdit4;
        combo := ComboBox1;
      end;
    2:
      begin
        edtDate := DateEdit4;
        edtCombo := ComboEdit3;
        combo := ComboBox4;
      end;
    3:
      begin
        edtDate := DateEdit2;
        edtCombo := ComboEdit3;
        combo := ComboBox3;
      end;
    4:
      begin
        edtDate := DateEdit5;
        edtCombo := ComboEdit5;
        combo := ComboBox5;
      end;
    5:
      begin
        edtDate := DateEdit6;
        edtCombo := ComboEdit6;
        combo := ComboBox6;
      end;
  end;

  if (combo.ItemIndex >= 0) and (edtCombo.Text <> '') then
  begin
    Campo := combo.Items[combo.ItemIndex];
    Value := QuotedStr('%' + UpperCase(edtCombo.Text) + '%');
    Operador := ' LIKE ';
    case combo.ItemIndex of
      3:
        begin
          Campo := 'CLAVE_TRANSPORTE';
          Value := IntToStr(edtCombo.ItemIndex + 1);
          Operador := ' = ';
        end;
      6:
        begin
          Campo := 'FENTRADA';
          Value := QuotedStr(edtDate.Text);
          Operador := ' = ';
        end;
      7:
        begin
          Campo := 'FENTREGA';
          Value := QuotedStr(edtDate.Text);
          Operador := ' = ';
        end;
      8 .. 12:
        begin
          Value := QuotedStr('True');
          Operador := ' = ';
        end;
    end;

    Filtro := 'AND UPPER(' + Campo + ') ' + Operador + ' ' + Value;

    case TButton(Sender).tag of
      0:
        begin
          FDPedidosPend.MacroByName('filtro').AsRaw := Filtro;
          FDPedidosPend.Open;
        end;
      1:
        begin
          FDPedidosCurso.MacroByName('filtro').AsRaw := Filtro;
          FDPedidosCurso.Open;
        end;
      2:
        begin
          FDPedidosFin.MacroByName('filtro').AsRaw := Filtro;
          FDPedidosFin.Open;
        end;
      3:
        begin
          FDAnulados.MacroByName('filtro').AsRaw := Filtro;
          FDAnulados.Open;
        end;
      4:
        begin
          FDMuestras.MacroByName('filtro').AsRaw := Filtro;
          FDMuestras.Open;
        end;
      5:
        begin
          FDRepos.MacroByName('filtro').AsRaw := Filtro;
          FDRepos.Open;
        end;
    end;
  end;

end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  case TButton(Sender).tag of
    0:
      begin

        ComboEdit1.Text := '';
        FDPedidosPend.MacroByName('filtro').AsRaw := '';
        FDPedidosPend.Open;
      end;
    1:
      begin
        ComboEdit4.Text := '';
        FDPedidosCurso.MacroByName('filtro').AsRaw := '';
        FDPedidosCurso.Open;
      end;
    2:
      begin
        ComboEdit3.Text := '';
        FDPedidosFin.MacroByName('filtro').AsRaw := '';
        FDPedidosFin.Open;
      end;
    3:
      begin
        ComboEdit2.Text := '';
        FDAnulados.MacroByName('filtro').AsRaw := '';
        FDAnulados.Open;
      end;
    4:
      begin
        ComboEdit5.Text := '';
        FDMuestras.MacroByName('filtro').AsRaw := '';
        FDMuestras.Open;
      end;
    5:
      begin
        ComboEdit6.Text := '';
        FDRepos.MacroByName('filtro').AsRaw := '';
        FDRepos.Open;
      end;
  end;
end;

procedure TForm1.TabControl1Change(Sender: TObject);
begin
  case TabControl1.TabIndex of
    0:
      begin
        FDPedidosPend.Close;
        FDPedidosPend.Open;
        FDPedidosCurso.Close;
        FDPedidosCurso.Open;
      end;
    1:
      begin
        FDPedidosFin.Close;
        FDPedidosFin.Open;
      end;
    2:
      begin
        FDAnulados.Close;
        FDAnulados.Open;
      end;
  end;

end;

procedure TForm1.Refresh;
begin
  if not aGuardar.Enabled then
  begin
    FDPedidosPend.Close;
    FDPedidosPend.Open;
    FDPedidosCurso.Close;
    FDPedidosCurso.Open;
    FDPedidosFin.Close;
    FDPedidosFin.Open;
    FDAnulados.Close;
    FDAnulados.Open;
    FDRepos.Close;
    FDRepos.Open;
    FDMuestras.Close;
    FDMuestras.Open;
  end;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
  if aGuardar.Enabled then
    aGuardar.Execute;
end;

procedure TForm1.TMSFMXLiveGrid1ColumnSize(Sender: TObject; ACol: Integer; var NewWidth: Single);
begin
  if (ACol = 0) or (ACol = 1) then
    NewWidth := 26;
end;

procedure TForm1.TMSFMXLiveGrid1ColumnSized(Sender: TObject; ACol: Integer; NewWidth: Single);
begin
  Grid1ColumnsWidth[ACol] := NewWidth;
end;

procedure TForm1.TMSFMXLiveGrid1ColumnSorted(Sender: TObject; ACol: Integer; Direction: TSortDirection);
var
  Direccion, Field: String;
  i: Integer;
begin
  if Direction = TSortDirection.sdAscending then
    Direccion := ' ASC'
  else
    Direccion := ' DESC';
  Field := LinkGridToDataSourceBindSourceDB3.Columns.Items[ACol].MemberName;
  FDPedidosPend.MacroByName('orden').AsRaw := 'ORDER BY ' + Field + Direccion;
  FDPedidosPend.Open;
  for i := 2 to TTMSFMXLiveGrid(Sender).Columns.Count - 1 do
  begin
    TTMSFMXLiveGrid(Sender).Columns.Items[i].Width := Grid1ColumnsWidth[i];
  end;
end;

procedure TForm1.TMSFMXLiveGrid1GetCellClass(Sender: TObject; ACol, ARow: Integer; var CellClassType: TFmxObjectClass);
begin
  if (ACol = 0) or (ACol = 1) then
    CellClassType := TTMSFMXBitmapGridCell;
end;

procedure TForm1.TMSFMXLiveGrid1GetCellLayout(Sender: TObject; ACol, ARow: Integer; ALayout: TTMSFMXGridCellLayout; ACellState: TCellState);
begin
  if UpperCase(TTMSFMXLiveGrid(Sender).Cells[13, ARow]) = 'TRUE' then
  begin
    ALayout.Stroke.Color := TAlphaColorRec.RED;
    if ACol = 0 then
    begin
      ALayout.Sides := [TSide.Top, TSide.Left, TSide.Bottom];
    end
    else if ACol = TTMSFMXLiveGrid(Sender).Columns.Count - 1 then
    begin
      ALayout.Sides := [TSide.Top, TSide.Right, TSide.Bottom];
    end
    else
    begin
      ALayout.Sides := [TSide.Top, TSide.Bottom];
    end;
    ALayout.FontFill.Color := TAlphaColorRec.RED;
  end;
  if UpperCase(TTMSFMXLiveGrid(Sender).Cells[15, ARow]) = 'TRUE' then
  begin
    ALayout.Stroke.Color := TAlphaColorRec.Fuchsia;
    if ACol = 2 then
    begin
      ALayout.Sides := [TSide.Top, TSide.Left, TSide.Bottom];
    end
    else if ACol = TTMSFMXLiveGrid(Sender).Columns.Count - 1 then
    begin
      ALayout.Sides := [TSide.Top, TSide.Right, TSide.Bottom];
    end
    else
    begin
      ALayout.Sides := [TSide.Top, TSide.Bottom];
    end;
    ALayout.FontFill.Color := TAlphaColorRec.RED;
  end;
  if TTMSFMXLiveGrid(Sender).Cells[4, ARow] <> '-' then
  begin
    if ACol = 2 then
      ALayout.Font.Style := [TFontStyle.fsBold];
  end;
  if TTMSFMXLiveGrid(Sender).Cells[0, ARow] = '1' then
    TTMSFMXLiveGrid(Sender).AddBitmap(0, ARow, ImageList1.Bitmap(TSizeF.Create(32, 32), 26))
  else if TTMSFMXLiveGrid(Sender).Cells[0, ARow] = '0' then
    TTMSFMXLiveGrid(Sender).RemoveBitmap(0, ARow);

  if (TTMSFMXLiveGrid(Sender).Name = TMSFMXLiveGrid1.Name) or (TTMSFMXLiveGrid(Sender).Name = TMSFMXLiveGrid5.Name) then
  begin
    if TTMSFMXLiveGrid(Sender).Cells[1, ARow] = '1' then
      TTMSFMXLiveGrid(Sender).AddBitmap(1, ARow, ImageList1.Bitmap(TSizeF.Create(32, 32), 25))
    else if TTMSFMXLiveGrid(Sender).Cells[1, ARow] = '0' then
      TTMSFMXLiveGrid(Sender).RemoveBitmap(1, ARow);
  end
  else
  begin
    if TTMSFMXLiveGrid(Sender).Cells[1, ARow] = '1' then
      TTMSFMXLiveGrid(Sender).AddBitmap(1, ARow, ImageList1.Bitmap(TSizeF.Create(32, 32), 22))
    else if TTMSFMXLiveGrid(Sender).Cells[1, ARow] = '0' then
      TTMSFMXLiveGrid(Sender).RemoveBitmap(1, ARow);
  end;

  if (ACol = 0) or (ACol = 1) then
    ALayout.FontFill.Color := TAlphaColorRec.Null;
  TTMSFMXLiveGrid(Sender).Cells[0, 0] := '';

  TTMSFMXLiveGrid(Sender).Cells[1, 0] := '';
end;

procedure TForm1.TMSFMXLiveGrid2ColumnSized(Sender: TObject; ACol: Integer; NewWidth: Single);
begin
  Grid2ColumnsWidth[ACol] := NewWidth;
end;

procedure TForm1.TMSFMXLiveGrid2ColumnSorted(Sender: TObject; ACol: Integer; Direction: TSortDirection);
var
  Direccion, Field: String;
  i: Integer;
begin
  if Direction = TSortDirection.sdAscending then
    Direccion := ' ASC'
  else
    Direccion := ' DESC';
  Field := LinkGridToDataSourceBindSourceDB1.Columns.Items[ACol].MemberName;
  FDPedidosCurso.MacroByName('orden').AsRaw := 'ORDER BY ' + Field + Direccion;
  FDPedidosCurso.Open;
  for i := 2 to TTMSFMXLiveGrid(Sender).Columns.Count - 1 do
  begin
    TTMSFMXLiveGrid(Sender).Columns.Items[i].Width := Grid2ColumnsWidth[i];
  end;
end;

procedure TForm1.TMSFMXLiveGrid3ColumnSized(Sender: TObject; ACol: Integer; NewWidth: Single);
begin
  Grid3ColumnsWidth[ACol] := NewWidth;
end;

procedure TForm1.TMSFMXLiveGrid3ColumnSorted(Sender: TObject; ACol: Integer; Direction: TSortDirection);
var
  Direccion, Field: String;
  i: Integer;
begin
  if Direction = TSortDirection.sdAscending then
    Direccion := ' ASC'
  else
    Direccion := ' DESC';
  Field := LinkGridToDataSourceBindSourceDB4.Columns.Items[ACol].MemberName;
  FDAnulados.MacroByName('orden').AsRaw := 'ORDER BY ' + Field + Direccion;
  FDAnulados.Open;
  for i := 2 to TTMSFMXLiveGrid(Sender).Columns.Count - 1 do
  begin
    TTMSFMXLiveGrid(Sender).Columns.Items[i].Width := Grid3ColumnsWidth[i];
  end;
end;

procedure TForm1.TMSFMXLiveGrid4ColumnSized(Sender: TObject; ACol: Integer; NewWidth: Single);
begin
  Grid4ColumnsWidth[ACol] := NewWidth;
end;

procedure TForm1.TMSFMXLiveGrid4ColumnSorted(Sender: TObject; ACol: Integer; Direction: TSortDirection);
var
  Direccion, Field: String;
  i: Integer;
begin
  if Direction = TSortDirection.sdAscending then
    Direccion := ' ASC'
  else
    Direccion := ' DESC';
  Field := LinkGridToDataSourceBindSourceDB2.Columns.Items[ACol].MemberName;
  FDPedidosFin.MacroByName('orden').AsRaw := 'ORDER BY ' + Field + Direccion;
  FDPedidosFin.Open;
  for i := 2 to TTMSFMXLiveGrid(Sender).Columns.Count - 1 do
  begin
    TTMSFMXLiveGrid(Sender).Columns.Items[i].Width := Grid4ColumnsWidth[i];
  end;
end;

procedure TForm1.TMSFMXLiveGrid5ColumnSized(Sender: TObject; ACol: Integer; NewWidth: Single);
begin
  Grid5ColumnsWidth[ACol] := NewWidth;
end;

procedure TForm1.TMSFMXLiveGrid5ColumnSorted(Sender: TObject; ACol: Integer; Direction: TSortDirection);
var
  Direccion, Field: String;
  i: Integer;
begin
  if Direction = TSortDirection.sdAscending then
    Direccion := ' ASC'
  else
    Direccion := ' DESC';
  Field := LinkGridToDataSourceBindSourceDB5.Columns.Items[ACol].MemberName;
  FDPedidosPend.MacroByName('orden').AsRaw := 'ORDER BY ' + Field + Direccion;
  FDPedidosPend.Open;
  for i := 2 to TTMSFMXLiveGrid(Sender).Columns.Count - 1 do
  begin
    TTMSFMXLiveGrid(Sender).Columns.Items[i].Width := Grid5ColumnsWidth[i];
  end;
end;

procedure TForm1.TMSFMXLiveGrid6ColumnSized(Sender: TObject; ACol: Integer; NewWidth: Single);
begin
  Grid6ColumnsWidth[ACol] := NewWidth;
end;

procedure TForm1.TMSFMXLiveGrid6ColumnSorted(Sender: TObject; ACol: Integer; Direction: TSortDirection);
var
  Direccion, Field: String;
  i: Integer;
begin
  if Direction = TSortDirection.sdAscending then
    Direccion := ' ASC'
  else
    Direccion := ' DESC';
  Field := LinkGridToDataSourceBindSourceDB6.Columns.Items[ACol].MemberName;
  FDPedidosPend.MacroByName('orden').AsRaw := 'ORDER BY ' + Field + Direccion;
  FDPedidosPend.Open;
  for i := 2 to TTMSFMXLiveGrid(Sender).Columns.Count - 1 do
  begin
    TTMSFMXLiveGrid(Sender).Columns.Items[i].Width := Grid6ColumnsWidth[i];
  end;

end;

procedure TForm1.TransactionAfterStartTransaction(Sender: TObject);
begin
  FDQuery1.SQL.Text := 'select current_transaction from rdb$database';
  FDQuery1.Open;
  // ShowMessage(FDQuery1.FieldByName('CURRENT_TRANSACTION').AsString);

end;

procedure TForm1.FDPedidosPendAfterEdit(DataSet: TDataSet);
begin
  aGuardar.Enabled := true;
  aDeshacer.Enabled := true;
end;

procedure TForm1.FMXUserControl1Debug(DebugMessage: string);
begin
  Memo6.Lines.Add(DebugMessage);
end;

procedure TForm1.FMXUserControl1LoginError(Sender: TObject; Usuario, Senha: string);
begin
  Memo6.Lines.Add('Control1LoginError');
end;

procedure TForm1.FMXUserControl1LoginSucess(Sender: TObject; IdUser: Integer; Usuario, Nome, Senha, Email: string; Privileged: Boolean);
begin
  lbUsuario.Text := Usuario;
  lbEmpresa.Text := FMXUserControl1.CurrentUser.NombreEmpresa;
  // RectangleC.Fill.Color := StringToColor(FDMaster.FieldByName('UC_COLOR').AsString);
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveUserPreferences;
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if aGuardar.Enabled then
    CanClose := (MessageDlg('Hay cambios pendientes. ¿desea salir sin guardar?', TMsgDlgType.mtWarning, mbYesNo, 0) = mrYes)
  else
    CanClose := true;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  SetLength(Grid1ColumnsWidth, TMSFMXLiveGrid1.Columns.Count);
  SetLength(Grid2ColumnsWidth, TMSFMXLiveGrid2.Columns.Count);
  SetLength(Grid3ColumnsWidth, TMSFMXLiveGrid3.Columns.Count);
  SetLength(Grid4ColumnsWidth, TMSFMXLiveGrid4.Columns.Count);
  SetLength(Grid5ColumnsWidth, TMSFMXLiveGrid5.Columns.Count);
  SetLength(Grid6ColumnsWidth, TMSFMXLiveGrid6.Columns.Count);
  SetArray(Grid1ColumnsWidth, 68);
  SetArray(Grid2ColumnsWidth, 68);
  SetArray(Grid3ColumnsWidth, 68);
  SetArray(Grid4ColumnsWidth, 68);
  SetArray(Grid5ColumnsWidth, 68);
  SetArray(Grid6ColumnsWidth, 68);
end;

procedure TForm1.FormShow(Sender: TObject);
begin

  FDPedidosPend.Open;
  FDPedidosCurso.Open;

  FDRepos.Open;

  FDMuestras.Open;
  TabControl1.TabIndex := 0;
  TabControl1.Tabs[3].Visible := false;
  GridPanelLayout2.Height := 0;
  GridPanelLayout1.Height := 0;
  GridPanelLayout3.Height := 0;
  GridPanelLayout4.Height := 0;
  GridPanelLayout9.Height := 0;
  GridPanelLayout11.Height := 0;
  Splitter2.Visible := false;
  Panel3.Visible := false;
  Splitter4.Visible := false;
  Panel4.Visible := false;
  Splitter1.Visible := false;
  Panel5.Visible := false;
  Splitter3.Visible := false;
  Panel6.Visible := false;
  Splitter6.Visible := false;
  Panel9.Visible := false;
  Splitter7.Visible := false;
  Panel11.Visible := false;
  lbUsuario.Text := FMXUserControl1.CurrentUser.UserLogin;
  lbEmpresa.Text := '';
  LoadUserPreferences;
  TMSFMXLiveGrid1.ColumnWidths[0] := 26;
  TMSFMXLiveGrid1.ColumnWidths[1] := 26;
  TMSFMXLiveGrid2.ColumnWidths[0] := 26;
  TMSFMXLiveGrid2.ColumnWidths[1] := 26;
  TMSFMXLiveGrid3.ColumnWidths[0] := 26;
  TMSFMXLiveGrid3.ColumnWidths[1] := 26;
  TMSFMXLiveGrid4.ColumnWidths[0] := 26;
  TMSFMXLiveGrid4.ColumnWidths[1] := 26;
  TMSFMXLiveGrid5.ColumnWidths[0] := 26;
  TMSFMXLiveGrid5.ColumnWidths[1] := 26;
  TMSFMXLiveGrid6.ColumnWidths[0] := 26;
  TMSFMXLiveGrid6.ColumnWidths[1] := 26;
end;

procedure TForm1.CambiarEstado;
begin
  FDPedidosCurso.Edit;
  if FDPedidosCurso.FieldByName('ESTADO').AsInteger = 1 then
    FDPedidosCurso.FieldByName('ESTADO').AsInteger := 2
  else
    FDPedidosCurso.FieldByName('ESTADO').AsInteger := 5;
  FDPedidosCurso.Post;
  FDPedidosCurso.Refresh;
end;

procedure TForm1.aEstadoFinalizadoExecute(Sender: TObject);
var
  Mensage: String;
  DAskAnyMore: Boolean;
begin
  DAskAnyMore := Boolean(Datos.ReadPropertyFromReg('SOFTWARE\Emite\GestionPedidos\Dialogs\ToFinishStatusChange', 'NoAskAnyMore'));
  if not DAskAnyMore then
  begin
    Mensage := '¿Desea realmente cambia el estado del pedido ' + FDPedidosCurso.FieldByName('PEDIDO_INTERNO').AsString + ' a FINALIZADO?';
    TaskDialog.Title := 'Cambiar estado pedido';
    TaskDialog.InstructionText := Mensage;
    TaskDialog.VerificationText := 'No volver a preguntar';
    TaskDialog.Bitmap := ImageList1.Bitmap(TSizeF.Create(32, 32), 25);
    TaskDialog.Show(
      procedure(ButtonID: Integer)
      begin
        case ButtonID of
          mrYes:
            CambiarEstado;
        end;
        if TaskDialog.VerifyResult then
          Datos.SavePropertyOnReg('SOFTWARE\Emite\GestionPedidos\Dialogs\ToFinishStatusChange', 'NoAskAnyMore', true);
      end);
  end
  else
    CambiarEstado;
end;

end.
