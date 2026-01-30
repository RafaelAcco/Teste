unit UProdutoController;

interface

uses UProdutoService, UProduto;

type
  TProdutoController = class
  private
    FService: TProdutoService;
  public
    constructor Create(AService: TProdutoService);
    procedure SalvarProduto(const AId:integer; ANome:String;AUnidade:String;AValorVenda:double);
    function CarregarProduto(AId: integer): TProduto;
  end;

implementation

constructor TProdutoController.Create(AService: TProdutoService);
begin
  FService := AService;
end;

procedure TProdutoController.SalvarProduto(const AId:integer; ANome:String;AUnidade:String;AValorVenda:double);
var
   Produto: TProduto;
begin
   Produto := TProduto.Create;
   Produto.Id := AId;
   Produto.Nome := ANome;
   Produto.Unidade := AUnidade;
   Produto.ValorVenda := AValorVenda;
   FService.CadastrarProduto(Produto);
end;

function TProdutoController.CarregarProduto(AId: integer): TProduto;
begin
   Result :=  FService.CarregarProduto(AId);
end;


end.
