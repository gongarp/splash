unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxGIFGraphic, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
  private
    { Private declarations }
    sValriable : String;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses  Unit2;

{$R *.dfm}

end.
