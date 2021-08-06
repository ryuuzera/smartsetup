unit SmartSetup.View.Main;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.ComCtrls,
  Vcl.WinXCtrls,
  acPNG,
  Vcl.StdCtrls,
  Vcl.OleCtrls,
  SHDocVw,
  JvComputerInfoEx,
  ShlObj,
  ComObj,
  FileCtrl,
  Midaslib,
  Registry,
  Zip,
  WinSock,
  JclSecurity,
  Winapi.UrlMon,
  ShellAPI,
  JclSysInfo;

type
  TfrmInicio = class(TForm)
    pnBackground: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    SplitView1: TSplitView;
    Image1: TImage;
    Panel1: TPanel;
    pnNavegadores: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Image2: TImage;
    Panel7: TPanel;
    lbLogo: TLabel;
    imgLogo: TImage;
    shpChrome: TShape;
    lbNavegadores: TLabel;
    Shape5: TShape;
    Shape6: TShape;
    Shape1: TShape;
    imgChrome: TImage;
    lbChrome: TLabel;
    imgFirefox: TImage;
    shpFirefox: TShape;
    lbFirefox: TLabel;
    lbOpera: TLabel;
    imgOpera: TImage;
    shpOpera: TShape;
    shpOperaGX: TShape;
    lbOperaGX: TLabel;
    imgOperaGX: TImage;
    imgVivaldi: TImage;
    Label2: TLabel;
    Shape7: TShape;
    Panel8: TPanel;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Label1: TLabel;
    Shape8: TShape;
    Image3: TImage;
    Label3: TLabel;
    Shape9: TShape;
    Label4: TLabel;
    Image4: TImage;
    Shape10: TShape;
    Label5: TLabel;
    Image5: TImage;
    Shape11: TShape;
    Label6: TLabel;
    Image6: TImage;
    Shape12: TShape;
    Image7: TImage;
    Label7: TLabel;
    Panel9: TPanel;
    Shape13: TShape;
    Shape14: TShape;
    Shape15: TShape;
    Label8: TLabel;
    Shape16: TShape;
    Image8: TImage;
    Label9: TLabel;
    Shape17: TShape;
    Label10: TLabel;
    Image9: TImage;
    Shape18: TShape;
    Label11: TLabel;
    Image10: TImage;
    Shape19: TShape;
    Label12: TLabel;
    Image11: TImage;
    Shape20: TShape;
    Image12: TImage;
    Label13: TLabel;
    Panel10: TPanel;
    Shape21: TShape;
    Shape22: TShape;
    Shape23: TShape;
    Label14: TLabel;
    Shape24: TShape;
    Image13: TImage;
    Label15: TLabel;
    Shape25: TShape;
    Label16: TLabel;
    Image14: TImage;
    Shape26: TShape;
    Label17: TLabel;
    Image15: TImage;
    Shape27: TShape;
    Label18: TLabel;
    Image16: TImage;
    Shape28: TShape;
    Image17: TImage;
    Label19: TLabel;
    Image18: TImage;
    imgChromeClick: TImage;
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure pnNavegadoresMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure pnNavegadoresMouseLeave(Sender: TObject);
    procedure imgChromeClickClick(Sender: TObject);
  private
    Origem : String;
    Destino : String;
    { Private declarations }
  public
    function BaixarArquivo(Origem, Destino: string): Boolean;
    { Public declarations }
  end;

var
  frmInicio: TfrmInicio;

implementation

{$R *.dfm}

uses SmartSetup.Model.InterfaceCallback, SmartSetup.View.Download;

function TfrmInicio.BaixarArquivo(Origem, Destino: string): Boolean;
var
  Status: TObjetoCallback;
begin
  Status := TObjetoCallback.Create;
  try
    Result := UrlDownloadToFile(nil, PChar(Origem), PChar(Destino),
    0, Status) = 0;
  except
    Result := False;
  end;
end;

procedure TfrmInicio.FormCreate(Sender: TObject);
var i: integer;
begin
  TabSheet1.TabVisible := False;
  TabSheet2.TabVisible := False;
  TabSheet3.TabVisible := False;
  TabSheet4.TabVisible := False;

  PageControl1.ActivePage := PageControl1.Pages[0];

  lbLogo.Visible := False;
  imgLogo.Visible := False;
end;

procedure TfrmInicio.Image1Click(Sender: TObject);
begin
  if SplitView1.Opened then
  begin
    SplitView1.Close;
    lbLogo.Visible := False;
    imgLogo.Visible := False;
    {Show panel label}
    pnNavegadores.ShowCaption := False;
  end
  else
   begin
    SplitView1.Open;
    lbLogo.Visible := True;
    imgLogo.Visible := True;

    {Show panel label}
    pnNavegadores.ShowCaption := True;
  end

end;

procedure TfrmInicio.imgChromeClickClick(Sender: TObject);
begin
  Origem := 'http://www.google.com/intl/pt-BR/chrome/thank-you.html?statcb=1&installdataindex=empty&defaultbrowser=0#';
  Destino := 'C:\Users\faag_\Downloads';
  try
    frmDownload := TfrmDownload.Create(nil);
    frmDownload.Show;
    if BaixarArquivo(Origem, Destino) then
      ShowMessage('Download efetuado')
    else
      ShowMessage('erro');
  except
     on E: Exception do
     ShowMessage(E.Message);
  end;
  frmDownload.Close;
  frmDownload.Free;
end;

procedure TfrmInicio.pnNavegadoresMouseLeave(Sender: TObject);
begin
  pnNavegadores.Color := $00443731;
end;

procedure TfrmInicio.pnNavegadoresMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  pnNavegadores.Color := $0054443D;
end;

end.
