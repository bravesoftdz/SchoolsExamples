program XDataSchoolsServer;

uses
  Vcl.Forms,
  uServerContainer in 'uServerContainer.pas' {ServerContainer: TDataModule},
  uMainForm in 'uMainForm.pas' {MainForm},
  uSchool in 'uSchool.pas',
  ChartService in 'ChartService.pas',
  ChartServiceImpl in 'ChartServiceImpl.pas',
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TServerContainer, ServerContainer);
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
