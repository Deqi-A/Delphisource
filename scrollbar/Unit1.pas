unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    ScrollBar1: TScrollBar;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;

    procedure Button1Click(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function fac(n:integer):real;
begin
  if n=0 then begin
    fac:=1;
  end else
    fac:=n*fac(n-1) ;//计算阶乘
end;

procedure TForm1.Button1Click(Sender: TObject);

var
  e:real;
  n,i:integer;
begin
  e:=0;
  n:=scrollbar1.Position;
  for i := 0 to n-1 do begin
    e:=e+1/fac(i);//计算公式e=0+1+1+1/2!+1/3!+...1/n!
  end;
  edit1.Text:= floattostr(e);

end;


procedure TForm1.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  edit1.Text:='';
end;

procedure TForm1.ScrollBar1Change(Sender: TObject);
begin
  label2.Caption:= format('计算前%d项',[scrollbar1.position]);
end;

end.
