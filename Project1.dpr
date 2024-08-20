program Project1;

uses
  Vcl.Forms,System.SysUtils,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {Form2};

{$R *.res}

begin

  Application.Initialize;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);

  Form2 := TForm2.Create(Application);
  Form2.Show;

  while not Form2.vCompletado do
     Application.ProcessMessages;

  Form2.Hide;
  Form2.Free;

  Application.Run;
end.
