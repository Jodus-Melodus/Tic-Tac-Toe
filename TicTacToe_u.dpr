program TicTacToe_u;

uses
  Vcl.Forms,
  //frmSplashscr in 'frmSplashscr.pas' {frmSplash},
  TicTacToe_p in 'TicTacToe_p.pas' {frmTicTacToe};

//frmSplashscreen_p in 'frmSplashscreen_p.pas' {frmSplash};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmTicTacToe, frmTicTacToe);
  //Application.CreateForm(TfrmSplashscreen, frmSplash);
  Application.Run;
end.
