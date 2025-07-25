unit unitFrameListaClientes;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Objects;

type
  TframeListaClientes = class(TFrame)
    rectCabecario: TRectangle;
    lblId: TLabel;
    lblNome: TLabel;
    lblTelefone: TLabel;
    lblEmail: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

end.
