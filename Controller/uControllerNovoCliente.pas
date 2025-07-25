unit uControllerNovoCliente;

interface

uses
  uCLiente,
  uAberturaTelaInserir,
  uAberturaTelaEditar,
  unitNovoCliente, System.SysUtils, System.UITypes;

type
  TControllerNovoCliente = class
    public
      class function AbrirParaInserir: Boolean;
      class function AbrirParaEditar(ACliente: TCliente): Boolean;
  end;

implementation

{ TControllerNovoCliente }

class function TControllerNovoCliente.AbrirParaEditar(ACliente: TCliente): Boolean;
var
  LTela : TFrmNovoCliente;
begin
  Result := False;
  if ACliente = nil then
    raise Exception.Create('Cliente não Selecionado');

  LTela := TfrmNovoCliente.Create(nil);
  LTela.ConfigurarAbertura(TAberturaTelaEditar.Create(LTela, ACliente));

  if LTela.Showmodal = mrok then
    Result := True;


end;

class function TControllerNovoCliente.AbrirParaInserir: Boolean;
var
  LTela : TFrmNovoCliente;
begin
  Result := False;
  LTela  := TfrmNovoCliente.Create(nil);
  LTela.ConfigurarAbertura(TAberturaTelaInserir.Create(LTela));
  if LTela.Showmodal = mrok then
    Result := True;
end;

end.
