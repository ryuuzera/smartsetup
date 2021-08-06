unit SmartSetup.View.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.WinXCtrls, acPNG, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    pnBackground: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    SplitView1: TSplitView;
    Image1: TImage;
    Panel1: TPanel;
    pnInicio: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Image2: TImage;
    Panel7: TPanel;
    lbLogo: TLabel;
    imgLogo: TImage;
    shp1: TShape;
    Shape1: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape2: TShape;
    Label1: TLabel;
    Image3: TImage;
    Label2: TLabel;
    Label3: TLabel;
    Image4: TImage;
    Label4: TLabel;
    Image5: TImage;
    Label5: TLabel;
    Image6: TImage;
    Label6: TLabel;
    Image7: TImage;
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  TabSheet1.TabVisible := False;
  TabSheet2.TabVisible := False;
  TabSheet3.TabVisible := False;
  TabSheet4.TabVisible := False;

  PageControl1.ActivePage := PageControl1.Pages[0];

  lbLogo.Visible := False;
  imgLogo.Visible := False;
end;

procedure TForm1.Image1Click(Sender: TObject);
begin
  if SplitView1.Opened then
  begin
    SplitView1.Close;
    lbLogo.Visible := False;
    imgLogo.Visible := False;
  end
  else
   begin
    SplitView1.Open;
    lbLogo.Visible := True;
    imgLogo.Visible := True;
  end

end;

end.
