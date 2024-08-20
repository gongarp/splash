unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.GIFImg,
  Vcl.MPlayer;

type
  TForm2 = class(TForm)
    Image1: TImage;
    TmrSplash: TTimer;
    Panel1: TPanel;
    procedure FormShow(Sender: TObject);
    procedure TmrSplashTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vCompletado: Boolean;
   end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.FormShow(Sender: TObject);
begin
  vCompletado := False;

  Image1.picture.loadfromfile('C:\PMS-I DELPHI11 Produccion\Bmp_Usados\PMS - Logo circulos.gif');
  (Image1.Picture.Graphic as TgifImage).Animate:=true;

end;

procedure TForm2.TmrSplashTimer(Sender: TObject);
begin
   vCompletado := True;
end;

end.
