unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,jpeg, StdCtrls;

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

procedure TForm1.Button1Click(Sender: TObject);
var
  MyJPEG : TJPEGImage;
  MyBMP  : TBitmap;
  i: integer;
begin
  { Convert a BMP to a JPEG }
for i:=1 to 306 do
 begin
  MyBMP := TBitmap.Create;
  with MyBMP do
    try
      LoadFromFile(inttostr(i)+'.gif');
      MyJPEG := TJPEGImage.Create;
      with MyJPEG do begin
        Assign(MyBMP);
        SaveToFile(inttostr(i)+'.jpeg');
        Free;
      end;
    finally
      Free;
    end;
 end;
end;

end.
