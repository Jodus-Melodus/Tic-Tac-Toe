unit TicTacToe_p;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtDlgs, Vcl.WinXCtrls, System.Notification, Vcl.Menus;

type
  TfrmTicTacToe = class(TForm)
    pnl1: TPanel;
    pnl5: TPanel;
    pnl2: TPanel;
    pnl7: TPanel;
    pnl3: TPanel;
    pnl9: TPanel;
    pnl6: TPanel;
    pnl4: TPanel;
    pnl8: TPanel;
    pnl10: TPanel;
    PlerO: TLabel;
    PlerX: TLabel;
    bmbClose: TBitBtn;
    bmbReset: TBitBtn;
    edtPlerO: TEdit;
    edtPlerX: TEdit;
    newGame: TButton;
    tmr1: TTimer;
    rbtnSingelPler: TRadioButton;
    rbtnMulti: TRadioButton;
    procedure pnl1Click(Sender: TObject);
    procedure pnl2Click(Sender: TObject);
    procedure pnl4Click(Sender: TObject);
    procedure pnl5Click(Sender: TObject);
    procedure pnl6Click(Sender: TObject);
    procedure pnl7Click(Sender: TObject);
    procedure pnl8Click(Sender: TObject);
    procedure pnl9Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure pnl3Click(Sender: TObject);
    procedure bmbResetClick(Sender: TObject);
    procedure newGameClick(Sender: TObject);
    procedure trm1(Sender: TObject);

  private
    { Private declarations }
  public
    { Private declarations }
   end;
var
  frmTicTacToe: TfrmTicTacToe;
  varChar:string[5];
  varScoreX:Integer;
  varScoreO:Integer;
  varWinner:Boolean;
  varGameOver:Boolean;

implementation
{$R *.dfm}

procedure pToggleValue();
BEGIN
  if varChar = 'X' then varChar := 'O' ELSE varChar := 'X';
END;

Procedure pCheckWin (Out IsWinner:Boolean);
Begin
  if  ((frmTicTacToe.pnl1.Caption = frmTicTacToe.pnl2.Caption)
      and (frmTicTacToe.pnl2.Caption = frmTicTacToe.pnl3.Caption))
      and (frmTicTacToe.pnl1.Caption <> '')
      and (frmTicTacToe.pnl2.Caption <> '')
      and (frmTicTacToe.pnl3.Caption <> '')

    then
    Begin
      frmTicTacToe.pnl1.Font.Color := clWhite;
      frmTicTacToe.pnl2.Font.Color := clWhite;
      frmTicTacToe.pnl3.Font.Color := clWhite;
      ShowMessage('Congratulations '+ frmTicTacToe.pnl2.Caption + ' you have won');
      if
        frmTicTacToe.pnl1.Caption = 'O'
        then
        varScoreO := varScoreO +1;
      if
        frmTicTacToe.pnl1.Caption = 'X'
        then
        varScoreX := varScoreX +1;

      IsWinner := True;
     End;

    if  ((frmTicTacToe.pnl4.Caption = frmTicTacToe.pnl5.Caption)
        and (frmTicTacToe.pnl5.Caption = frmTicTacToe.pnl6.Caption))
        and (frmTicTacToe.pnl4.Caption <> '')
        and (frmTicTacToe.pnl5.Caption <> '')
        and (frmTicTacToe.pnl6.Caption <> '')

    then
    Begin
      frmTicTacToe.pnl4.Font.Color := clWhite;
      frmTicTacToe.pnl5.Font.Color := clWhite;
      frmTicTacToe.pnl6.Font.Color := clWhite;
      ShowMessage('Congratulations '+ frmTicTacToe.pnl5.Caption + ' you have won');

      if
        frmTicTacToe.pnl4.Caption = 'O'
        then
        varScoreO := varScoreO +1;
      if
        frmTicTacToe.pnl4.Caption = 'X'
        then
        varScoreX := varScoreX +1;

        IsWinner := True;
    End;
    if  ((frmTicTacToe.pnl7.Caption = frmTicTacToe.pnl8.Caption)
        and (frmTicTacToe.pnl8.Caption = frmTicTacToe.pnl9.Caption))
        and (frmTicTacToe.pnl7.Caption <> '')
        and (frmTicTacToe.pnl8.Caption <> '')
        and (frmTicTacToe.pnl9.Caption <> '')
    then

    Begin
      frmTicTacToe.pnl7.Font.Color := clWhite;
      frmTicTacToe.pnl8.Font.Color := clWhite;
      frmTicTacToe.pnl9.Font.Color := clWhite;
      ShowMessage('Congratulations '+ frmTicTacToe.pnl8.Caption + ' you have won');

      if
        frmTicTacToe.pnl8.Caption = 'O'
        then
        varScoreO := varScoreO +1;
      if
        frmTicTacToe.pnl8.Caption = 'X'
        then
        varScoreX := varScoreX +1;

        IsWinner := True;
    End;
    if  ((frmTicTacToe.pnl1.Caption = frmTicTacToe.pnl4.Caption)
        and (frmTicTacToe.pnl4.Caption = frmTicTacToe.pnl7.Caption)
        and (frmTicTacToe.pnl1.Caption <> '')
        and (frmTicTacToe.pnl4.Caption <> '')
        and (frmTicTacToe.pnl7.Caption <> ''))
    then

    Begin
      frmTicTacToe.pnl1.Font.Color := clWhite;
      frmTicTacToe.pnl4.Font.Color := clWhite;
      frmTicTacToe.pnl7.Font.Color := clWhite;
      ShowMessage('Congratulations '+ frmTicTacToe.pnl4.Caption + ' you have won');

      if
        frmTicTacToe.pnl4.Caption = 'O'
        then
        varScoreO := varScoreO +1;
      if
        frmTicTacToe.pnl4.Caption = 'X'
        then
        varScoreX := varScoreX +1;

        IsWinner := True;
    End;
    if  ((frmTicTacToe.pnl2.Caption = frmTicTacToe.pnl5.Caption)
        and (frmTicTacToe.pnl5.Caption = frmTicTacToe.pnl8.Caption))
        and (frmTicTacToe.pnl2.Caption <> '')
        and (frmTicTacToe.pnl5.Caption <> '')
        and (frmTicTacToe.pnl8.Caption <> '')
    then

    Begin
      frmTicTacToe.pnl2.Font.Color := clWhite;
      frmTicTacToe.pnl5.Font.Color := clWhite;
      frmTicTacToe.pnl8.Font.Color := clWhite;
      ShowMessage('Congratulations '+ frmTicTacToe.pnl5.Caption + ' you have won');

      if
        frmTicTacToe.pnl5.Caption = 'O'
        then
        varScoreO := varScoreO +1;
      if
        frmTicTacToe.pnl5.Caption = 'X'
        then
        varScoreX := varScoreX +1;

        IsWinner := True;
    End;
    if  ((frmTicTacToe.pnl3.Caption = frmTicTacToe.pnl6.Caption)
        and (frmTicTacToe.pnl6.Caption = frmTicTacToe.pnl9.Caption))
        and (frmTicTacToe.pnl3.Caption <> '')
        and (frmTicTacToe.pnl6.Caption <> '')
        and (frmTicTacToe.pnl9.Caption <> '')
    then

    Begin
      frmTicTacToe.pnl3.Font.Color := clWhite;
      frmTicTacToe.pnl6.Font.Color := clWhite;
      frmTicTacToe.pnl9.Font.Color := clWhite;
      ShowMessage('Congratulations '+ frmTicTacToe.pnl6.Caption + ' you have won');

      if
        frmTicTacToe.pnl6.Caption = 'O'
        then
        varScoreO := varScoreO +1;
      if
        frmTicTacToe.pnl6.Caption = 'X'
        then
        varScoreX := varScoreX +1;

        IsWinner := True;
    End;
    if  ((frmTicTacToe.pnl1.Caption = frmTicTacToe.pnl5.Caption)
        and (frmTicTacToe.pnl5.Caption = frmTicTacToe.pnl9.Caption))
        and (frmTicTacToe.pnl1.Caption <> '')
        and (frmTicTacToe.pnl5.Caption <> '')
        and (frmTicTacToe.pnl9.Caption <> '')
    then

    Begin
      frmTicTacToe.pnl1.Font.Color := clWhite;
      frmTicTacToe.pnl5.Font.Color := clWhite;
      frmTicTacToe.pnl9.Font.Color := clWhite;
      ShowMessage('Congratulations '+ frmTicTacToe.pnl5.Caption + ' you have won');

      if
        frmTicTacToe.pnl5.Caption = 'O'
        then
        varScoreO := varScoreO +1;
      if
        frmTicTacToe.pnl5.Caption = 'X'
        then
        varScoreX := varScoreX +1;

        IsWinner := True;
    End;
    if  ((frmTicTacToe.pnl3.Caption = frmTicTacToe.pnl5.Caption)
        and (frmTicTacToe.pnl5.Caption = frmTicTacToe.pnl7.Caption))
        and (frmTicTacToe.pnl3.Caption <> '')
        and (frmTicTacToe.pnl5.Caption <> '')
        and (frmTicTacToe.pnl7.Caption <> '')
    then

    Begin
      frmTicTacToe.pnl3.Font.Color := clWhite;
      frmTicTacToe.pnl5.Font.Color := clWhite;
      frmTicTacToe.pnl7.Font.Color := clWhite;
      ShowMessage('Congratulations '+ frmTicTacToe.pnl5.Caption + ' you have won');

      if
        frmTicTacToe.pnl5.Caption = 'O'
        then
        varScoreO := varScoreO +1;
      if
        frmTicTacToe.pnl5.Caption = 'X'
        then

        varScoreX := varScoreX +1;
        IsWinner := True;
    End;

    // Ckeck if all panels are selected but no winner
    if
      (frmTicTacToe.pnl1.Caption <> '' )
      AND (frmTicTacToe.pnl2.Caption <> '' )
      AND (frmTicTacToe.pnl3.Caption <> '' )
      AND (frmTicTacToe.pnl4.Caption <> '' )
      AND (frmTicTacToe.pnl5.Caption <> '' )
      AND (frmTicTacToe.pnl6.Caption <> '' )
      AND (frmTicTacToe.pnl7.Caption <> '' )
      AND (frmTicTacToe.pnl8.Caption <> '' )
      AND (frmTicTacToe.pnl9.Caption <> '' )
      AND (not (IsWinner))
   then
   begin
      IsWinner := False;
      varGameOver := True;
      ShowMessage('Game Over');
   end;



    frmTicTacToe.edtPlerO.Text := IntToStr(varScoreO);
    frmTicTacToe.edtPlerX.Text := IntToStr(varScoreX);

End;

 Procedure pEnableAllPnls();
 begin

   frmTicTacToe.pnl1.Enabled := True;
   frmTicTacToe.pnl2.Enabled := True;
   frmTicTacToe.pnl3.Enabled := True;
   frmTicTacToe.pnl4.Enabled := True;
   frmTicTacToe.pnl5.Enabled := True;
   frmTicTacToe.pnl6.Enabled := True;
   frmTicTacToe.pnl7.Enabled := True;
   frmTicTacToe.pnl8.Enabled := True;
   frmTicTacToe.pnl9.Enabled := True;

 end;

procedure pComputerPlay();
var
  varRandomPnl:integer;
  varPnlChecked:Boolean;
begin
  if
    (frmTicTacToe.rbtnSingelPler.Checked = True)
  then
 begin
  varRandomPnl := 0;
  varPnlChecked := False;
  
  Screen.Cursor := crHourGlass;                                                 //cursor := crHourglass
  
  while (varpnlChecked = False) do
  begin
    varRandomPnl := Random(10);
    Sleep(500);
    ///////////////////////////////////////////
    if (varRandomPnl = 1) 
    then 
    begin
      if frmTicTacToe.pnl1.Caption = ''
      then
      begin 
        frmTicTacToe.pnl1.Caption := varChar;
        varPnlChecked := True;
        frmTicTacToe.pnl1.Enabled := False;
      end;
    end;

    ///////////////////////////////////////////
    if (varRandomPnl = 2) 
    then 
    begin
      if frmTicTacToe.pnl2.Caption = ''
      then
      begin 
        frmTicTacToe.pnl2.Caption := varChar;
        varPnlChecked := True;
        frmTicTacToe.pnl2.Enabled := False;
      end;
    end;

    ///////////////////////////////////////////
    if (varRandomPnl = 3)
    then
    begin
      if frmTicTacToe.pnl3.Caption = ''
      then
      begin
        frmTicTacToe.pnl3.Caption := varChar;
        varPnlChecked := True;
        frmTicTacToe.pnl3.Enabled := False;
      end;
    end;

    ///////////////////////////////////////////
    if (varRandomPnl = 4) 
    then 
    begin
      if frmTicTacToe.pnl4.Caption = ''
      then
      begin 
        frmTicTacToe.pnl4.Caption := varChar;
        varPnlChecked := True;
        frmTicTacToe.pnl4.Enabled := False;
      end;
    end;

    ///////////////////////////////////////////
    if (varRandomPnl = 5) 
    then 
    begin
      if frmTicTacToe.pnl5.Caption = ''
      then
      begin
        frmTicTacToe.pnl5.Caption := varChar;
        varPnlChecked := True;
        frmTicTacToe.pnl5.Enabled := False;
      end;
    end;

    ///////////////////////////////////////////
    if (varRandomPnl = 6)
    then
    begin
      if frmTicTacToe.pnl6.Caption = ''
      then
      begin
        frmTicTacToe.pnl6.Caption := varChar;
        varPnlChecked := True;
        frmTicTacToe.pnl6.Enabled := False;
      end;
    end;

    ///////////////////////////////////////////
    if (varRandomPnl = 7)
    then
    begin
      if frmTicTacToe.pnl7.Caption = ''
      then
      begin
        frmTicTacToe.pnl7.Caption := varChar;
        varPnlChecked := True;
        frmTicTacToe.pnl7.Enabled := False;
      end;
    end;

    ///////////////////////////////////////////
    if (varRandomPnl = 8)
    then
    begin
      if frmTicTacToe.pnl8.Caption = ''
      then
      begin 
        frmTicTacToe.pnl8.Caption := varChar;
        varPnlChecked := True;
        frmTicTacToe.pnl8.Enabled := False;
      end;
    end;
  end;

  ///////////////////////////////////////////
    if (varRandomPnl = 9)
    then
    begin
      if frmTicTacToe.pnl9.Caption = ''
      then
      begin
        frmTicTacToe.pnl9.Caption := varChar;
        varPnlChecked := True;
        frmTicTacToe.pnl9.Enabled := False;
      end;
    end;
  Screen.Cursor := crDefault;

  pToggleValue();
  pCheckWin(varWinner);

 end;
end;

procedure TfrmTicTacToe.FormCreate(Sender: TObject);
begin
  varChar := 'O';
  varGameOver := False;
  frmTicTacToe.Color := clTeal;
  pnl2.Color := clTeal;
  edtPlerO.Color := clTeal;
  edtPlerX.Color := clTeal;
  {frmTicTacToe.AlphaBlend := True;
  frmTicTacToe.AlphaBlendValue := 1;}
  varWinner := False;
end;

procedure TfrmTicTacToe.newGameClick(Sender: TObject);
begin
  varChar := 'O';
  varGameOver := False;
  pEnableAllPnls;
  pnl1.Caption := '';
  pnl2.Caption := '';
  pnl3.Caption := '';
  pnl4.Caption := '';
  pnl5.Caption := '';
  pnl6.Caption := '';
  pnl7.Caption := '';
  pnl8.Caption := '';
  pnl9.Caption := '';

  pnl1.Font.Color := clBlack;
  pnl2.Font.Color := clBlack;
  pnl3.Font.Color := clBlack;
  pnl4.Font.Color := clBlack;
  pnl5.Font.Color := clBlack;
  pnl6.Font.Color := clBlack;
  pnl7.Font.Color := clBlack;
  pnl8.Font.Color := clBlack;
  pnl9.Font.Color := clBlack;

  edtPlerO.Text := '';
  edtPlerX.Text := '';
  varScoreX := 0;
  varScoreO := 0;

  varWinner := False;
end;

procedure TfrmTicTacToe.bmbResetClick(Sender: TObject);
begin
  varChar := 'O';
  varGameOver := False;
  pEnableAllPnls;
  pnl1.Caption := '';
  pnl2.Caption := '';
  pnl3.Caption := '';
  pnl4.Caption := '';
  pnl5.Caption := '';
  pnl6.Caption := '';
  pnl7.Caption := '';
  pnl8.Caption := '';
  pnl9.Caption := '';

  pnl1.Font.Color := clBlack;
  pnl2.Font.Color := clBlack;
  pnl3.Font.Color := clBlack;
  pnl4.Font.Color := clBlack;
  pnl5.Font.Color := clBlack;
  pnl6.Font.Color := clBlack;
  pnl7.Font.Color := clBlack;
  pnl8.Font.Color := clBlack;
  pnl9.Font.Color := clBlack;

  varWinner := False;
end;

procedure TfrmTicTacToe.pnl1Click(Sender: TObject);
begin
  pnl1.Caption := varChar;
  pnl1.Update;
  pToggleValue();
  pCheckWin(varWinner);
  pnl1.Enabled := False;

  if not(varWinner)
     and not (varGameOver)
  then
    pComputerPlay();

end;

procedure TfrmTicTacToe.pnl2Click(Sender: TObject);
begin
  pnl2.Caption := varChar;
  pnl2.Update;
  pToggleValue();
  pCheckWin(varWinner);
  pnl2.Enabled := False;

  if not(varWinner)
     and not (varGameOver)
  then
    pComputerPlay();

end;

procedure TfrmTicTacToe.pnl3Click(Sender: TObject);
begin
  pnl3.Caption := varChar;
  pnl3.Update;
  pToggleValue();
  pCheckWin(varWinner);
  pnl3.Enabled := False;

  if not(varWinner)
     and not (varGameOver)
  then
    pComputerPlay();

end;

procedure TfrmTicTacToe.pnl4Click(Sender: TObject);
begin
  pnl4.Caption := varChar;
  pnl4.Update;
  pToggleValue();
  pCheckWin(varWinner);
  pnl4.Enabled := False;

  if not(varWinner)
     and not (varGameOver)
  then
    pComputerPlay();
end;

procedure TfrmTicTacToe.pnl5Click(Sender: TObject);
begin
  pnl5.Caption := varChar;
  pnl5.Update;
  pToggleValue();
  pCheckWin(varWinner);
  pnl5.Enabled := False;

  if not(varWinner)
     and not (varGameOver)
  then
    pComputerPlay();
end;

procedure TfrmTicTacToe.pnl6Click(Sender: TObject);
begin
  pnl6.Caption := varChar;
  pnl6.Update;
  pToggleValue();
  pCheckWin(varWinner);
  pnl6.Enabled := False;

  if not(varWinner)
     and not (varGameOver)
  then
    pComputerPlay();

end;

procedure TfrmTicTacToe.pnl7Click(Sender: TObject);
begin
  pnl7.Caption := varChar;
  pnl7.Update;
  pToggleValue();
  pCheckWin(varWinner);
  pnl7.Enabled := False;

  if not(varWinner)
     and not (varGameOver)
  then
    pComputerPlay();

end;

procedure TfrmTicTacToe.pnl8Click(Sender: TObject);
begin
  pnl8.Caption := varChar;
  pnl8.Update;
  pToggleValue();
  pCheckWin(varWinner);
  pnl8.Enabled := False;

  if not(varWinner)
     and not (varGameOver)
  then
    pComputerPlay();

end;

procedure TfrmTicTacToe.pnl9Click(Sender: TObject);
begin
  pnl9.Caption := varChar;
  pnl9.Update;
  pToggleValue();
  pCheckWin(varWinner);
  pnl9.Enabled := False;

  if not(varWinner)
     and not (varGameOver)
  then
    pComputerPlay();
end;

procedure TfrmTicTacToe.trm1(Sender: TObject);
var i: integer;
begin
 tmr1.Enabled := False;
  frmTicTacToe.AlphaBlend := True;
  frmTicTacToe.AlphaBlendValue := 0;
    for i  := 1 to 25 do
      begin
        application.ProcessMessages;
        Sleep(1);
        frmTicTacToe.AlphaBlendValue := i * 10;
      end;
end;

end.

