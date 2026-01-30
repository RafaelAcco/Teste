unit UProdutoMemory;

interface

uses
  UProdutoRepository, UProduto, Generics.Collections;

type
  TProdutoMemoria = class(TInterfacedObject, TProdutoRepository)
  private
    FLista: TObjectList<TProduto>;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Salvar(AProduto: TProduto);
    function GetID(AID: integer): TProduto;
  end;

implementation

constructor TProdutoMemoria.Create;
begin
  FLista := TObjectList<TProduto>.Create(True);
end;

destructor TProdutoMemoria.Destroy;
begin
  FLista.Free;
  inherited;
end;

procedure TProdutoMemoria.Salvar(AProduto: TProduto);
begin
  FLista.Add(AProduto);
end;

function TProdutoMemoria.GetID(AId: integer): TProduto;
var
  Produto: TProduto;
begin
  Result := nil;

  for Produto in FLista do
    if Produto.Id = AId then
      Exit(Produto);
end;

end.
