unit untPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Data.DB, Datasnap.DBClient, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Buttons, sBitBtn, sSkinManager, sSkinProvider;

type
  TfrmPrincipal = class(TForm)
    Panel2: TPanel;
    ClientDataSet1: TClientDataSet;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox2: TGroupBox;
    DataSource1: TDataSource;
    DBNavigator1: TDBNavigator;
    btnAbrir: TsBitBtn;
    btnFechar: TsBitBtn;
    btnClonar: TsBitBtn;
    btnSalvar: TsBitBtn;
    btnLimparTela: TsBitBtn;
    btnCarregar: TsBitBtn;
    btncriarIndice: TsBitBtn;
    btnAtivar: TsBitBtn;
    btnDesativar: TsBitBtn;
    ClientDataSet1nome: TStringField;
    ClientDataSet1valor: TBCDField;
    ClientDataSet1id: TIntegerField;
    procedure btnAbrirClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnLimparTelaClick(Sender: TObject);
    procedure btnClonarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCarregarClick(Sender: TObject);
    procedure btncriarIndiceClick(Sender: TObject);
    procedure btnAtivarClick(Sender: TObject);
    procedure btnDesativarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnAbrirClick(Sender: TObject);
begin
 ClientDataSet1.CreateDataSet;
 ClientDataSet1.Open;
end;



procedure TfrmPrincipal.btnClonarClick(Sender: TObject);
 var
  varCdsClone: TClientDataSet;
  varI :Integer;
begin
  varCdsClone := TClientDataSet.Create(Self);
  try
    //clona o registro na sua tabela original
    ClientDataSet1.Append;
    //faz um loop para processar todos os campos da sua tebela original

    for varI := 0 to ClientDataSet1.FieldCount - 2 do
      begin
        //verifica se o tipo do campo é fo tipo data, para que não pegue valores
        // de campos do tipo calculado.
          if (ClientDataSet1.Fields[varI].FieldKind = fkData) then
           begin
          // Diz que o campo de sua tabela original, vai receber o campo da
          // tabela temporária que foi clonada.
             ClientDataSet1.Fields[varI].Value := varCdsClone.FieldByName(ClientDataSet1.Fields[varI].FieldName).Value;
           end;

      end;
  finally
    // Fecha a tabela temporária clonada.
    varCdsClone.Close;
    // Libera a var da tabela temporária clonada da memória.
    varCdsClone.Free;
  end;
end;


procedure TfrmPrincipal.btnFecharClick(Sender: TObject);
begin
 ClientDataSet1.Close;
end;

procedure TfrmPrincipal.btnLimparTelaClick(Sender: TObject);
begin
 ClientDataSet1.EmptyDataSet;
end;

procedure TfrmPrincipal.btnSalvarClick(Sender: TObject);
begin
   // Salva os registro na tabela temporária na memória para o disco.
   ClientDataSet1.SaveToFile('ClientDataSet_temp.xml');
end;



procedure TfrmPrincipal.btnCarregarClick(Sender: TObject);
begin
  // Carrega o arquivo .XML, para memória.
  ClientDataSet1.LoadFromFile('ClientDataSet_temp.xml');
end;

procedure TfrmPrincipal.btncriarIndiceClick(Sender: TObject);
begin
   // Cria o índice pelo campo NOME.
   ClientDataSet1.IndexFieldNames := 'NOME';
end;



procedure TfrmPrincipal.btnAtivarClick(Sender: TObject);
begin
   // Ativa o log.
   ClientDataSet1.LogChanges := True;
end;

procedure TfrmPrincipal.btnDesativarClick(Sender: TObject);
begin
// Desativar Log.
   ClientDataSet1.LogChanges := False;
end;


end.
