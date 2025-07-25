unit uAberturaTelaEditar;

interface

uses
  uAberturaTelaBase,
  uCliente,
  unitNovoCliente, uControllerCliente;

type
  TAberturaTelaEditar = class(TAberturaTela)
    private
      FTela    : TfrmNovoCliente;
      FCliente : TCliente;
    public
      constructor Create(ATela: TfrmNovoCliente; ACliente: TCliente);
      procedure   ConfigurarTela; override;
      procedure   SalvarDados; override;
  end;

implementation

{ TAberturaTelaEditar }

procedure TAberturaTelaEditar.ConfigurarTela;
begin
  FTela.lblTitulo.Text   := 'Editar Cliente';
  FTela.edtNome.Text     := FCliente.GetNome;
  FTela.edtTelefone.Text := FCliente.GetTelefone;
  FTela.edtEmail.Text    := FCliente.GetEmail;
end;

constructor TAberturaTelaEditar.Create(ATela: TfrmNovoCliente;
                                       ACliente: TCliente);
begin
  FTela    := ATela;
  FCliente := ACliente;
end;

procedure TAberturaTelaEditar.SalvarDados;
var
  LControllerCliente : TControllerCliente;
begin
  LControllerCliente := TControllerCliente.Create;
  try
    FCliente.SetNome     (FTela.edtNome.Text);
    FCliente.SetTelefone (FTela.edtTelefone.Text);
    FCliente.SetEmail    (FTela.edtEmail.Text);
    LControllerCliente.EditarCliente(FCliente);
  finally
    LControllerCliente.Free;
  end;
end;

end.
