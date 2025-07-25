unit uAberturaTelaBase;

interface
uses
  uControllerCliente,
  system.SysUtils,
  FMX.Dialogs,
  uCliente;

type

  TAberturaTela = class
    private
    public
      procedure ConfigurarTela; virtual; abstract;
      procedure SalvarDados;    virtual; abstract;
  end;

implementation

end.
