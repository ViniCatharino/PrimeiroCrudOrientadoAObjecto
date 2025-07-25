program CrudOOP;

uses
  System.StartUpCopy,
  FMX.Forms,
  unitClientes in 'View\unitClientes.pas' {frmClientes},
  uCliente in 'Model\uCliente.pas',
  uConexao in 'Utils\uConexao.pas',
  uDAOCliente in 'DAO\uDAOCliente.pas',
  uControllerCliente in 'Controller\uControllerCliente.pas',
  core in 'Utils\core.pas',
  unitNovoCliente in 'View\unitNovoCliente.pas' {frmNovoCliente},
  uAberturaTelaBase in 'Model\uAberturaTelaBase.pas',
  uAberturaTelaInserir in 'Model\uAberturaTelaInserir.pas',
  uAberturaTelaEditar in 'Model\uAberturaTelaEditar.pas',
  uControllerNovoCliente in 'Controller\uControllerNovoCliente.pas',
  unitFrameListaClientes in 'View\Frames\unitFrameListaClientes.pas' {frameListaClientes: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmClientes, frmClientes);
  Application.Run;
end.
