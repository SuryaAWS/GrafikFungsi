unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TeEngine, Series, ExtCtrls, TeeProcs, Chart;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label4: TLabel;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    Chart1: TChart;
    Series1: TLineSeries;
    Label5: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button2Click(Sender: TObject);
begin
application.Terminate;
end;

procedure TForm1.Button1Click(Sender: TObject);
var i:integer;

  function FX(x:integer):real;
  begin
        FX:=2*x*x+3*x+5;
  end;

  function fs(s:integer):real;
  begin
        fs:=sin(pi/180*s);
  end;

  function fc(c:integer):real;
  begin
        fc:=cos(pi/180*c)-2*sin(pi/180*c);
  end;

  begin
    series1.clear;
    series1.xvalues.multiplier:=strtoint(edit2.text)/strtoint(edit3.text);

    for i:=1 to strtoint(edit1.text) do
        if radiobutton1.checked then
        series1.add(FX(i))
        else

        if radiobutton2.checked then
        series1.add(sin(pi/180*i))
        {series1.add(fs(i))}
        else

        if radiobutton3.checked then
        series1.add(fc(i))
    end;


procedure TForm1.RadioButton1Click(Sender: TObject);
begin
radiobutton1.Checked:=true;
radiobutton2.Checked:=false;
radiobutton3.Checked:=false;
end;

procedure TForm1.RadioButton2Click(Sender: TObject);
begin
radiobutton1.Checked:=false;
radiobutton2.Checked:=true;
radiobutton3.Checked:=false;
end;

procedure TForm1.RadioButton3Click(Sender: TObject);
begin
radiobutton1.Checked:=false;
radiobutton2.Checked:=false;
radiobutton3.Checked:=true;
end;

end.
