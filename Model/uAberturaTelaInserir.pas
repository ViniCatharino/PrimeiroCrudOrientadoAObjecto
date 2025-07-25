unit uAberturaTelaInserir;

interface

uses
  uAberturaTelaBase,
  unitNovoCliente, uControllerCliente, System.SysUtils;

type
  TAberturaTelaInserir = class(TAberturaTela)
  private
    FTela : TfrmNovoCliente;
  public
    constructor Create(Atela : TfrmNovoCliente);
    procedure   ConfigurarTela; override;
    procedure   SalvarDados;    override;
  end;


implementation
uses
  uCliente;



{ TAberturaTelaInserir }

procedure TAberturaTelaInserir.ConfigurarTela;
begin
  FTela.lblTitulo.Text   := 'Novo Cliente';
  FTela.edtNome.Text     := '';
  FTela.edtTelefone.Text := '';
  FTela.edtEmail.Text    := '';
end;

constructor TAberturaTelaInserir.Create(Atela: TfrmNovoCliente);
begin
  FTela := ATela;
end;

procedure TAberturaTelaInserir.SalvarDados;
var
  LCliente           : TCliente;
  LControllerCliente : TControllerCliente;
begin
  LCliente           := TCliente.Create;
  LControllerCliente := TControllerCliente.Create;
  try
    try
      LCliente.SetNome     (FTela.edtNome.Text);
      LCliente.SetTelefone (FTela.edtTelefone.Text);
      LCliente.SetEmail    (FTela.edtEmail.Text);
      LControllerCliente.InserirNovoCliente(LCLiente);
    except
    on ex:Exception do
      raise Exception.Create('Erro ao Inserir Novo Cliente' + ex.message);
    end;
  finally
    LCliente.Free;
    LControllerCliente.Free;
  end;

end;

end.
