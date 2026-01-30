unit UPedidoController;

interface

uses UPedidoService, UCliente,UPedido,UPedidoItem,Generics.Collections, UProdutoService,UClienteService,UProduto;

type
  TPedidoController = class
  private
    FService: TPedidoService;
    FServiceProduto: TProdutoService;
    FServiceCliente: TClienteService;
    FPedido : TPedido;
  public
    constructor Create(AService: TPedidoService;AServiceCliente: TClienteService);
    procedure Salvar(AId:integer);
    procedure Carregar(AId: integer);
    procedure CarregarCliente(AId: integer);
    procedure AdicionarItem(AProduto : TProduto; AQuantidade : double);
    procedure NovoPedido;
    property Pedido: TPedido read FPedido write FPedido;
  end;

implementation

constructor TPedidoController.Create(AService: TPedidoService;AServiceCliente: TClienteService);
begin
  FService := AService;
  FServiceCliente:= AServiceCliente;
  FPedido := TPedido.Create;
end;

procedure TPedidoController.NovoPedido;
begin
   FPedido.Free;
   FPedido := TPedido.Create;
end;

procedure TPedidoController.Salvar(AId : integer);
var
   pedido : TPedido;
begin
   pedido := TPedido.Create;
   pedido.Id := AId;
   pedido.Cliente := FPedido.Cliente;
   pedido.PedidoItens := FPedido.PedidoItens;
   FService.Cadastrar(pedido);
end;

procedure TPedidoController.Carregar(AId: integer);
begin
   FPedido := FService.Carregar(AId);
end;

procedure TPedidoController.CarregarCliente(AId: integer);
begin
  FPedido.Cliente := FServiceCliente.CarregarCliente(AId);
end;

procedure TPedidoController.AdicionarItem(AProduto : TProduto; AQuantidade : double);
var
   PedidoItem : TPedidoItem;
begin
   PedidoItem := TPedidoItem.Create;
   PedidoItem.Nome := AProduto.Nome;
   PedidoItem.Unidade := AProduto.Unidade;
   PedidoItem.ValorUnitario := AProduto.ValorVenda;
   PedidoItem.Quantidade := AQuantidade;
   FPedido.PedidoItens.Add(PedidoItem);
end;

end.
