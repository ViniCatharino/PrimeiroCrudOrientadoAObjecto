unit unitNovoCliente;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Edit,
  FMX.Controls.Presentation, FMX.StdCtrls, uCliente, uDAOCliente,
  uControllerCliente,core,uAberturaTelaBase;

type
  TfrmNovoCliente = class(TForm)
    lblTitulo: TLabel;
    lblNome: TLabel;
    edtNome: TEdit;
    edtTelefone: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edtEmail: TEdit;
    btnSalvar: TButton;
    btnCancelar: TButton;
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    FAberturaTela     : TAberturaTela;
  public
    { Public declarations }
    procedure ConfigurarAbertura(AAbertura : TAberturaTela);
  end;

var
  frmNovoCliente: TfrmNovoCliente;

implementation


{$R *.fmx}

procedure TfrmNovoCliente.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmNovoCliente.btnSalvarClick(Sender: TObject);
begin
  FAberturaTela.SalvarDados;
  showmessage('Cliente salvo com Sucesso');
  close;
end;


procedure TfrmNovoCliente.ConfigurarAbertura(AAbertura: TAberturaTela);
begin
  FAberturaTela := AAbertura;
end;

procedure TfrmNovoCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  modalresult := mrOk;
  Action         := TCloseAction.caFree;
  frmNovoCliente := nil;
end;

procedure TfrmNovoCliente.FormShow(Sender: TObject);
begin
  FAberturaTela.ConfigurarTela;
end;

end.
