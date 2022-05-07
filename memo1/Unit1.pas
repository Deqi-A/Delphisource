unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,System.Diagnostics , System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
  Memo1: TMemo;
  but_random: TButton;
  Memo2: TMemo;
  but_maopao: TButton;
  but_zheban: TButton;
  Memo3: TMemo;
  Label1: TLabel;
  Label2: TLabel;
    Label3: TLabel;
  procedure but_randomClick(Sender: TObject);
  procedure FormCreate(Sender: TObject);
  procedure but_maopaoClick(Sender: TObject);
  procedure but_zhebanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Form1: TForm1;

implementation
var
  num: array[0..99] of integer;
{$R *.dfm}

procedure TForm1.but_zhebanClick(Sender: TObject);
  var
  i,j,n,t,k,low,mid,high:integer;
  tim: Tstopwatch;

begin //折半排序
  n:= 99; //n取数组最大长度
  tim:= tstopwatch.Create;
  tim.Start; //开始计时

  for i := 1 to n do begin
     t:= num[i];
     low:= 0;
     high:= i-1;
     while high >= low do begin
        mid:= (low+high) div 2 ;
        if t< num[mid] then begin
          high:= mid-1 ; //顺序排列，若小放前一半
        end else begin
          low:= mid+1 ;  //顺序排列，若大放后一半
        end;
     end;

     for j := i-1 downto low do begin
        num[j+1]:= num[j] ; //前面往后移，把t留的空填上
     end;
        num[low]:= t;
  end;

  tim.Stop;//结束计时
  label2.caption:=inttostr( tim.ElapsedMilliseconds) ;//统计时间

  for k := 0 to 99 do begin
     memo3.Lines.Add(inttostr(num[k]));
  end;


end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  memo1.Text:='' ;
  memo2.Text:='';
  memo3.Text:='';
end;

procedure TForm1.but_maopaoClick(Sender: TObject);
  var
  i,j,k,temp : integer;
  tim: Tstopwatch ;

begin//冒泡排序
  tim:= tstopwatch.Create;
  tim.Start; //开始计时

  for i := 98 downto 0 do  begin //循环n-1次，每一次将最大数放右边
      for j := 0 to i do  begin
          if num[j]> num[j+1] then  begin
             temp:= num[j] ;
             num[j]:= num[j+1];
             num[j+1]:= temp;
          end;
      end;
  end;

  tim.Stop;//结束计时
  label1.caption:=inttostr( tim.ElapsedMilliseconds) ;//统计时间

  for k := 0 to 99 do begin //将排序好的数组打印出来
    memo2.Lines.Add(inttostr(num[k]));
  end;

end;

procedure TForm1.but_randomClick(Sender: TObject);
var
  i:integer ;
begin//产生随机数
  for i := 0  to 99 do begin
     num[i]:= 1+random(99);
     memo1.Lines.Add(inttostr(num[i]));
  end;
end;

end.
