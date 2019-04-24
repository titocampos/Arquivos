unit uServerMain;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  IdBaseComponent, IdComponent, IdTCPServer, IdHTTPServer, StdCtrls,
  ExtCtrls, HTTPApp, IdCustomHTTPServer;

type
  TfrmServer = class(TForm)
    httpServer: TIdHTTPServer;
    chkActive: TCheckBox;
    IdHTTPServer1: TIdHTTPServer;
    procedure chkActiveClick(Sender: TObject);
    procedure httpServerCommandGet(AThread: TIdPeerThread; RequestInfo: TIdHTTPRequestInfo; ResponseInfo: TIdHTTPResponseInfo);
  public
  end;

var
  frmServer: TfrmServer;

implementation
const
  sShare = '\\cfserver\executavel';
  sPass  = 'piCF89';
  sUser  = 'cecafi\administrator';

{$R *.DFM}

procedure TfrmServer.chkActiveClick(Sender: TObject);
begin
  httpServer.Active := chkActive.Checked;
end;

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

procedure TfrmServer.httpServerCommandGet(AThread: TIdPeerThread; RequestInfo: TIdHTTPRequestInfo; ResponseInfo: TIdHTTPResponseInfo);
var
  RequestedDocument : String;
begin
  RequestedDocument := Copy(RequestInfo.Document, 2, Length(RequestInfo.Document) -1);

  try
    if CompareText(RequestedDocument, 'favicon.ico') <> 0 then
    begin
      try
        if MapNetworkDrive(sShare, sPass, sUser) then
          ResponseInfo.ContentStream := TFileStream.Create(sShare + '\' + RequestedDocument, fmOpenRead or fmShareCompat);
      except
      end;
    end;
  finally
    if Assigned(ResponseInfo.ContentStream) then
    begin
      ResponseInfo.ContentLength := ResponseInfo.ContentStream.Size;
      ResponseInfo.WriteHeader;
      ResponseInfo.WriteContent;
      ResponseInfo.ContentStream.Free;
      ResponseInfo.ContentStream := nil;
    end
    else if ResponseInfo.ContentText <> '' then
    begin
      ResponseInfo.ContentLength := Length(ResponseInfo.ContentText);
      ResponseInfo.WriteHeader;
    end
    else
    begin
      if not ResponseInfo.HeaderHasBeenWritten then
      begin
        ResponseInfo.ResponseNo := 404;
        ResponseInfo.ResponseText := 'Document not found';
        ResponseInfo.WriteHeader;
      end;
      ResponseInfo.ContentText := 'The document requested is not availabe.';
      ResponseInfo.WriteContent;
    end;
  end;
end;

end.

