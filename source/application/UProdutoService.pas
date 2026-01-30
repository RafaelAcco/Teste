unit UProdutoService;

interface

uses
  UProduto, UProdutoRepository;

type
  TProdutoService = class
  private
    FRepository: TProdutoRepository;
  public
    constructor Create(ARepository: TProdutoRepository);
    procedure CadastrarProduto(AProduto : TProduto);
    function CarregarProduto(AId: integer): TProduto;
  end;

implementation

constructor TProdutoService.Create(ARepository: TProdutoRepository);
begin
  FRepository := ARepository;
end;

procedure TProdutoService.CadastrarProduto(AProduto : TProduto);
begin
   FRepository.Salvar(AProduto);
end;

function TProdutoService.CarregarProduto(AId: integer): TProduto;
begin
   Result :=  FRepository.GetID(AId);
end;

end.
