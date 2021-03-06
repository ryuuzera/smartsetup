unit SmartSetup.View.Download;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Samples.Gauges,
  Vcl.StdCtrls, Vcl.ComCtrls;

type
  TfrmDownload = class(TForm)
    Panel1: TPanel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    lbTitulo: TLabel;
    Gauge1: TGauge;
    lbStatus: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDownload: TfrmDownload;

implementation

uses
  SmartSetup.Model.InterfaceCallback;
{$R *.dfm}

end.
