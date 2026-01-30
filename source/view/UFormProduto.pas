unit UFormProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, UProduto,UProdutoController;

type
  TFormProduto = class(TForm)
    Label1: TLabel;
    LabelUnidade: TLabel;
    LabelValorVenda: TLabel;
    LabelID: TLabel;
    EditNome: TEdit;
    EditValorVenda: TEdit;
    ButtonSalvar: TButton;
    EditID: TEdit;
    EditUnidade: TEdit;
    ButtonCarregar: TButton;
    constructor Create(AOwner: TComponent; AController: TProdutoController);
    procedure ButtonSalvarClick(Sender: TObject);
    procedure ButtonCarregarClick(Sender: TObject);
    procedure EditValorVendaExit(Sender: TObject);
  private
    FController: TProdutoController;
    Produto: TProduto;
  public
    { Public declarations }
  end;


implementation

{$R *.dfm}


constructor TFormProduto.Create(AOwner: TComponent; AController: TProdutoController);
begin
   inherited Create(AOwner);
   FController := AController;
end;


procedure TFormProduto.EditValorVendaExit(Sender: TObject);
var
  Valor: Currency;
begin
  if TryStrToCurr(EditValorVenda.Text, Valor) then
    EditValorVenda.Text := FormatCurr('#,##0.00', Valor)
  else
  begin
    EditValorVenda.Text := '0,00';
    ShowMessage('Valor inválido.');
  end;
end;


procedure TFormProduto.ButtonCarregarClick(Sender: TObject);
begin
  Produto := nil;
  try
    Produto := FController.CarregarProduto(StrToInt(EditID.Text));

    if not Assigned(Produto) then
    begin
      ShowMessage('Produto não encontrado');
      Exit;
    end;

    EditNome.Text := Produto.Nome;
    EditUnidade.Text := Produto.Unidade;
    EditValorVenda.Text := FormatCurr('#,##0.00', Produto.ValorVenda);

  except
    on E: Exception do
      ShowMessage(E.Message);
  end;
end;

procedure TFormProduto.ButtonSalvarClick(Sender: TObject);
begin
   try
    FController.SalvarProduto(
      StrToInt(EditID.Text),
      EditNome.Text,
      EditUnidade.Text,
      StrToFloat(EditValorVenda.Text)
    );

    ShowMessage('Produto salvo com sucesso');
  except
    on E: Exception do
      ShowMessage(E.Message);
  end;
end;


end.
