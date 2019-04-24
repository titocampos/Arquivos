unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  Consts;

const
  NewOK: PChar = 'New Ok';
  NewCancel: PChar = 'New Cancel';

procedure TForm1.Button1Click(Sender: TObject);
begin
  InputBox('Test', 'Enter something', 'Test');
end;

procedure HookResourceString(rs: PResStringRec; newStr: PChar);
var
  oldprotect: DWORD;
begin
  VirtualProtect(rs, SizeOf(rs^), PAGE_EXECUTE_READWRITE, @oldProtect);
  rs^.Identifier := Integer(newStr);
  VirtualProtect(rs, SizeOf(rs^), oldProtect, @oldProtect);
end;


initialization
  HookResourceString(@SMsgDlgOK, NewOK);
  HookResourceString(@SMsgDlgCancel, NewCancel);
end.
