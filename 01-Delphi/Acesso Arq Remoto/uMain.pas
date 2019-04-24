unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    E_ARQUIVO: TEdit;
    E_CAMINHO: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    E_USUARIO: TEdit;
    Label4: TLabel;
    E_SENHA: TEdit;
    BT_LEITURA: TButton;
    M_CONTEUDO: TMemo;
    Label5: TLabel;
    procedure BT_LEITURAClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function MapNetworkDrive(sRemoteName, sPassword, sUserName : string) : Boolean;
var
  NetRes: TNetResource;
  Res: DWord;
begin
  Result := True;
  FillChar(NetRes, SizeOf(TNetResource), 0);
  NetRes.dwType := RESOURCETYPE_DISK;
  NetRes.lpRemoteName := PChar(sRemoteName);
  NetRes.lpLocalName := '';
  Res := WNetAddConnection2(NetRes, PChar(sPassword), PChar(sUserName), 0);
  Result := (Res = NO_ERROR);
end;

procedure TForm1.BT_LEITURAClick(Sender: TObject);
begin
  if MapNetworkDrive(E_CAMINHO.Text, E_SENHA.Text, E_USUARIO.Text) then
  begin
    M_CONTEUDO.Lines.LoadFromFile(E_CAMINHO.Text + '\' + E_ARQUIVO.Text);
  end
  else
    MessageDlg('Nào foi possível mapear drive da rede.', mtError, [mbOK], 0);
end;

end.
