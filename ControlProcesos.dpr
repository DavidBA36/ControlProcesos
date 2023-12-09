program ControlProcesos;

uses
{$IFDEF DEBUG}
  FastMM4,
{$ENDIF}
  System.StartUpCopy,
  FMX.Forms,
  uPrincipal in 'uPrincipal.pas' {Form1} ,
  uFiltroAvanzado in 'uFiltroAvanzado.pas' {Form2} ,
  udatos in 'udatos.pas' {Datos: TDataModule} ,
  uSelectorColumnas in 'uSelectorColumnas.pas' {FSelectorColumas};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.CreateForm(TDatos, Datos);
  Application.CreateForm(TForm1, Form1);
  Application.RealCreateForms;
  Application.MainForm.Visible := False;
  Application.Run;

end.
