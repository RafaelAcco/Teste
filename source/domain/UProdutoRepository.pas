unit UProdutoRepository;

interface

uses UProduto;

type
  TProdutoRepository = interface
    procedure Salvar(Produto: TProduto);
    function GetID(ID: integer): TProduto;
  end;


implementation

end.
