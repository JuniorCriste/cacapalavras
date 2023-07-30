unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TmainS }

  TmainS = class(TForm)
    menuS: TPanel;
    nomore: TButton;
    construa: TButton;
    folha: TPanel;
    procedure construaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure folhaClick(Sender: TObject);
    procedure menuSClick(Sender: TObject);
    procedure nomoreClick(Sender: TObject);

  private

  public    
  procedure aleatorio;   
  procedure zere;

  end;

var
  mainS: TmainS;
  countname: integer;
  espalado: integer;
  espacima: integer;

const
  str='ABCDEFGHIJKLMNOPQRSTUVWXYZ';
implementation

{$R *.lfm}

{ TmainS }

procedure TmainS.FormCreate(Sender: TObject);
var i:integer;
    sorteio: integer;
    B: TButton;

begin
  Randomize;
  zere;


end;

procedure TmainS.zere();
begin
   countname:=0;
   espalado:=0;
   espacima:=0;
   aleatorio();

end;

procedure TmainS.construaClick(Sender: TObject);
var
NewFolha: TPanel;
begin
  folha.free;
  NewFolha := TPanel.create(mainS);
  NewFolha.parent:= mainS;
  NewFolha.name:= 'Folha';

  aleatorio;

  end;


procedure TmainS.folhaClick(Sender: TObject);
begin

end;

procedure TmainS.menuSClick(Sender: TObject);
begin

end;

procedure TmainS.nomoreClick(Sender: TObject);
begin
  mainS.Close;
end;

procedure TmainS.aleatorio();

 var i: integer;
    B: TButton;
//  espalado: integer;
// espacima: integer;
//const
//str='ABCDEFGHIJKLMNOPQRSTUVWXYZ';
begin
    for  i := 1 to 150 do
    begin

    B := TButton.Create(folha);
    B.Left := espalado;
    B.top:= espacima;
    countname:= countname +1;
    B.name   := Format('lv%d', [countname]);
    B.Parent := folha;
    B.Height := 50;
    B.Width := 50;
    B.Caption:=str[random(length(str))+1];
    espalado:= espalado + 50;

    if (espalado > 749) then
    begin

             espalado:= 0;
             espacima:=espacima + 50;
    end;
    end;
    folha.top:= 0;
    folha.left:= 144;
    folha.Height:=560;
    folha.Width:=768;
    folha.AutoSize:= true;   
    mainS.height:= 500;
    mainS.Width:= (menuS.width + 750);

    end;


end.
