program PAvance;

uses
  Vcl.Forms,
  UfrmMain in 'UfrmMain.pas' {frmMain},
  UfrmLogon in 'UfrmLogon.pas' {frmLogon},
  UdtmMain in 'UdtmMain.pas' {dtmMain: TDataModule},
  UfrmUsuarios in 'UfrmUsuarios.pas' {frmUsuarios},
  UfrmAulas in 'UfrmAulas.pas' {frmAulas},
  UfrmAulasConteudos in 'UfrmAulasConteudos.pas' {frmAulasConteudos},
  UfrmAulasExercicios in 'UfrmAulasExercicios.pas' {frmAulasExercicios},
  UdtmUsuarios in 'UdtmUsuarios.pas' {dtmUsuarios: TDataModule},
  UfrmLogonTransp in 'UfrmLogonTransp.pas' {frmLogonTransp},
  UdtmTurmas in 'UdtmTurmas.pas' {dtmTurmas: TDataModule},
  UfrmTurmas in 'UfrmTurmas.pas' {frmTurmas},
  UfrmEscola in 'UfrmEscola.pas' {frmEscola},
  UdtmEscola in 'UdtmEscola.pas' {dtmEscola: TDataModule},
  UdtmAulas in 'UdtmAulas.pas' {dtmAulas: TDataModule},
  Vcl.Themes,
  Vcl.Styles,
  UdtmAulasConteudos in 'UdtmAulasConteudos.pas' {dtmAulasConteudos: TDataModule},
  UdtmAulasExercicios in 'UdtmAulasExercicios.pas' {dtmAulasExercicios: TDataModule},
  UfrmFrames_Aulas in 'UfrmFrames_Aulas.pas' {frmFrames_Aulas},
  UdtmFrames_Aulas in 'UdtmFrames_Aulas.pas' {dtmFrames_Aulas: TDataModule},
  UfrmAulasQuestoes in 'UfrmAulasQuestoes.pas' {frmAulasQuestoes},
  UdtmAulasQuestoes in 'UdtmAulasQuestoes.pas' {dtmAulasQuestoes: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Sky');
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TdtmMain, dtmMain);
  Application.CreateForm(TfrmLogon, frmLogon);
  Application.CreateForm(TdtmTurmas, dtmTurmas);
  Application.CreateForm(TdtmEscola, dtmEscola);
  Application.CreateForm(TdtmUsuarios, dtmUsuarios);
  Application.CreateForm(TdtmAulas, dtmAulas);
  Application.CreateForm(TdtmAulasConteudos, dtmAulasConteudos);
  Application.CreateForm(TdtmAulasExercicios, dtmAulasExercicios);
  Application.CreateForm(TdtmFrames_Aulas, dtmFrames_Aulas);
  Application.CreateForm(TdtmAulasQuestoes, dtmAulasQuestoes);
  Application.Run;
end.
