unit UFormPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,UPedidoController,UProdutoController,UCliente,UProduto,UPedidoItem,
  Grids, ExtCtrls;

type
  TFormPedido = class(TForm)
    Label1: TLabel;
    EditIDPedido: TEdit;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EditIdCliente: TEdit;
    EditNomeCliente: TEdit;
    EditDocumentoCliente: TEdit;
    ButtonCarregarCliente: TButton;
    Label10: TLabel;
    EditCidade: TEdit;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    EditIDProduto: TEdit;
    EditNomeProduto: TEdit;
    Label6: TLabel;
    EditUnidade: TEdit;
    Label7: TLabel;
    Label9: TLabel;
    EditValorUnitario: TEdit;
    EditQuantidade: TEdit;
    Label8: TLabel;
    ButtonAdicionarItem: TButton;
    ButtonCarregarProduto: TButton;
    StringGridItem: TStringGrid;
    ButtonCarregar: TButton;
    ButtonSalvar: TButton;
    Label11: TLabel;
    EditValorTotalPedido: TEdit;
    constructor Create(AOwner: TComponent; AControllerPedido: TPedidoController; AControllerProduto:TProdutoController);
    procedure ButtonCarregarClienteClick(Sender: TObject);
    procedure ButtonCarregarProdutoClick(Sender: TObject);
    procedure ButtonAdicionarItemClick(Sender: TObject);
    procedure ButtonSalvarClick(Sender: TObject);
    procedure ButtonCarregarClick(Sender: TObject);
  private
    FControllerPedido : TPedidoController;
    FControllerProduto : TProdutoController;
    Produto: TProduto;
    procedure AtualizarGrid();
    procedure LimparComponentes;
    procedure CarregarComponentes;
    procedure AtualizarTotal;
  public
    { Public declarations }
  end;


implementation

{$R *.dfm}


constructor TFormPedido.Create(AOwner: TComponent; AControllerPedido: TPedidoController; AControllerProduto:TProdutoController);
begin
   inherited Create(AOwner);
   FControllerPedido := AControllerPedido;
   FControllerProduto := AControllerProduto;
   FControllerPedido.NovoPedido;

   StringGridItem.ColCount := 5;
   StringGridItem.RowCount := 2; // começa com 1 linha de dados

   StringGridItem.Cells[0, 0] := 'Nome';
   StringGridItem.Cells[1, 0] := 'Unidade';
   StringGridItem.Cells[2, 0] := 'Quantidade';
   StringGridItem.Cells[3, 0] := 'Valor Unitário';
   StringGridItem.Cells[4, 0] := 'Valor Total';
   StringGridItem.ColWidths[0] := 300;
   StringGridItem.ColWidths[1] := 100;
   StringGridItem.ColWidths[2] := 100;
   StringGridItem.ColWidths[3] := 100;
   StringGridItem.ColWidths[4] := 100;

end;

procedure TFormPedido.LimparComponentes;
begin
   EditIDProduto.Clear;
   EditNomeProduto.Clear;
   EditUnidade.Clear;
   EditValorUnitario.Clear;
   EditQuantidade.Clear;
end;

procedure TFormPedido.AtualizarGrid;
var
   PedidoItem : TPedidoItem;
   Linha: Integer;
begin

   StringGridItem.RowCount := 1;

   for PedidoItem in FControllerPedido.Pedido.PedidoItens do
   begin
      Linha := StringGridItem.RowCount;
      StringGridItem.RowCount := Linha + 1;

      StringGridItem.Cells[0, Linha] := PedidoItem.Nome;
      StringGridItem.Cells[1, Linha] := PedidoItem.Unidade;
      StringGridItem.Cells[2, Linha] := FloatToStr(PedidoItem.Quantidade);
      StringGridItem.Cells[3, Linha] := FloatToStr(PedidoItem.ValorUnitario);
      StringGridItem.Cells[4, Linha] := FloatToStr(PedidoItem.ValorTotal);
   end;
end;

procedure TFormPedido.AtualizarTotal;
begin
   EditValorTotalPedido.Text := FormatCurr('#,##0.00', FControllerPedido.Pedido.ValorTotal);
end;

procedure TFormPedido.ButtonAdicionarItemClick(Sender: TObject);
begin
   FControllerPedido.AdicionarItem(Produto,StrToFloat(EditQuantidade.Text));
   LimparComponentes;
   AtualizarGrid;
   AtualizarTotal;
end;

procedure TFormPedido.ButtonCarregarClick(Sender: TObject);
begin
   FControllerPedido.Carregar(StrToInt(EditIDPedido.Text));
   if not Assigned(FControllerPedido.Pedido) then
    begin
      ShowMessage('Pedido não encontrado');
      Exit;
    end;
   LimparComponentes;
   CarregarComponentes;
   AtualizarGrid;
   AtualizarTotal;
end;

procedure TFormPedido.ButtonCarregarClienteClick(Sender: TObject);
begin
   try
    FControllerPedido.CarregarCliente(StrToInt(EditIdCliente.Text));

    if not Assigned(FControllerPedido.Pedido.Cliente) then
    begin
      ShowMessage('Cliente não encontrado');
      Exit;
    end;

    EditNomeCliente.Text := FControllerPedido.Pedido.Cliente.Nome;
    EditDocumentoCliente.Text := FControllerPedido.Pedido.Cliente.Documento;
    EditCidade.Text := FControllerPedido.Pedido.Cliente.Cidade;
  except
    on E: Exception do
      ShowMessage(E.Message);
  end;
end;

procedure TFormPedido.ButtonCarregarProdutoClick(Sender: TObject);
begin
   Produto := nil;
  try
    Produto := FControllerProduto.CarregarProduto(StrToInt(EditIDProduto.Text));

    if not Assigned(Produto) then
    begin
      ShowMessage('Produto não encontrado');
      Exit;
    end;

    EditNomeProduto.Text := Produto.Nome;
    EditUnidade.Text := Produto.Unidade;
    EditValorUnitario.Text := FormatCurr('#,##0.00', Produto.ValorVenda);
    EditQuantidade.Text := '1';
  except
    on E: Exception do
      ShowMessage(E.Message);
  end;
end;

procedure TFormPedido.ButtonSalvarClick(Sender: TObject);
begin
   try
    FControllerPedido.Salvar(StrToInt(EditIDPedido.Text));

    ShowMessage('Pedido salvo com sucesso');
  except
    on E: Exception do
      ShowMessage(E.Message);
  end;
end;

procedure TFormPedido.CarregarComponentes;
begin
   EditIdCliente.Text := IntToStr(FControllerPedido.Pedido.Cliente.Id);
   EditNomeCliente.Text := FControllerPedido.Pedido.Cliente.Nome;
   EditDocumentoCliente.Text := FControllerPedido.Pedido.Cliente.Documento;
   EditCidade.Text := FControllerPedido.Pedido.Cliente.Cidade;
end;


end.
