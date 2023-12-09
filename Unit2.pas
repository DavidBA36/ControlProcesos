unit Unit2;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.FMXUI.Wait,
  Data.Bind.EngExt, FMX.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs, FMX.Bind.Editors, FMX.StdCtrls, Data.Bind.Components, Data.Bind.DBScope, FireDAC.Phys.IBBase, Data.DB,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, FMX.ListBox, FMX.Edit, FMX.Controls.Presentation, FMX.Layouts, FMX.Grid.Style, FMX.ScrollBox, FMX.Grid, FMX.ComboEdit;

type
  TForm2 = class(TForm)
    GridPanelLayout1: TGridPanelLayout;
    Label1: TLabel;
    Label3: TLabel;
    FDMaster: TFDQuery;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    Label2: TLabel;
    ComboEdit1: TComboEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Grid1: TGrid;
    FDTransaction1: TFDTransaction;
    FDUpdateSQL1: TFDUpdateSQL;
    Panel1: TPanel;
    Button4: TButton;
    Button5: TButton;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}

uses udatos;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//
end;

procedure TForm2.FormDestroy(Sender: TObject);
begin
//
end;

procedure TForm2.FormResize(Sender: TObject);
begin
//
end;

procedure TForm2.FormShow(Sender: TObject);
begin
//
end;

end.
