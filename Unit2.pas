unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, System.IOUtils,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.GIFImg,
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
var
  gifPath: string;
begin
  vCompletado := False;

  gifPath := TPath.Combine(ExtractFilePath(ParamStr(0)),
    TPath.Combine('Bmp_Usados', 'PMS - Logo circulos.gif'));
  if FileExists(gifPath) then
  begin
    Image1.Picture.LoadFromFile(gifPath);
    (Image1.Picture.Graphic as TGIFImage).Animate := True;
  end;
end;

procedure TForm2.TmrSplashTimer(Sender: TObject);
begin
  vCompletado := True;
  TmrSplash.Enabled := False;
end;

end.
