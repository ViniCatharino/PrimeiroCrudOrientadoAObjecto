unit uConexao;

interface

uses
  System.SysUtils,
  System.IniFiles,
  FireDAC.Comp.Client,
  FireDAC.Stan.Def,
  FireDAC.Stan.Async,
  FireDAC.Stan.Param,
  FireDAC.Stan.Option,
  FireDAC.Stan.Pool,
  FireDAC.Phys.FB,
  FireDAC.Phys.FBDef,
  FireDAC.UI.Intf,
  FireDAC.VCLUI.Wait,
  FireDAC.Comp.UI,
  FireDAC.DApt,
  FireDAC.Phys;

type
  TConexao = class
    private
      FConn : TFDConnection;
    public
      property  Conn : TFDConnection read FConn write FConn;
      procedure Conectar;
  end;



implementation

procedure TConexao.Conectar;
var
  LDriver : TFDPhysFBDriverLink;
begin
  LDriver  := TFDPhysFBDriverLink.Create(nil);
  Fconn    := TFDConnection.Create(nil);

  try
    try
      FConn.Params.Add('DriverID=     FB                                  ');
      FConn.Params.Add('Database=     D:\CrudOOP\Banco de dados\BANCO.FDB ');
      FConn.Params.Add('User_Name=    SYSDBA                              ');
      FConn.Params.Add('Password=     sysdba                              ');
      FConn.Params.Add('CharacterSet= UTF8                                ');
      FConn.Params.Add('Protocol=     TCPIP                               ');
      FConn.Params.Add('Server=       LocalHost                           ');
      FConn.Params.Add('Port=         3050                                ');
      LDriver.VendorLib := 'D:\Firebird_3_0\fbclient.dll';
      FConn.LoginPrompt := False;
      FConn.Connected   := true;
    except on ex:Exception do
      raise Exception.Create('Erro ao conectar ao banco de dados: ' + ex.Message);
    end;
  finally
    LDriver.Free;
   // FConn.Free
  end;

end;

end.
