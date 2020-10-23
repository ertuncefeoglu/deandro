unit Unit2;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Controls.Presentation, FMX.Layouts, FMX.ListBox, StrUtils;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    ListBox1: TListBox;
    ListBox2: TListBox;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Tap(Sender: TObject; const Point: TPointF);
  private
    { Private declarations }

  public
    { Public declarations }
     TutorialList : Array[1..3] of string;
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}

procedure TForm2.Button1Click(Sender: TObject);
var
 i,j: integer;
begin
  Label1.Text := 'arama baþlatýlýyor';

  ListBox2.Clear;

  for i := 1 to Length(TutorialList) do
  begin
    if ContainsText(TutorialList[i], Edit1.Text) then
       ListBox2.Items.Add(TutorialList[i]);
  end;

  Label1.Text := 'arama tamamlandý';

end;

procedure TForm2.Edit1Enter(Sender: TObject);
begin
    Edit1.SelectAll;
end;

procedure TForm2.Edit1Tap(Sender: TObject; const Point: TPointF);
begin
    Edit1.SelectAll;
end;

procedure TForm2.FormShow(Sender: TObject);
var
j: integer;
begin

    TutorialList[1] := 'Delphi ile mobil Uygulama';
    TutorialList[2] := 'flutter ile mobil Uygulama';
    TutorialList[3] := 'xamarin ile mobil Uygulama';

    for j := 1 to 3 do
      begin
        ListBox1.Items.Add(TutorialList[j]);
      end;

end;

end.
