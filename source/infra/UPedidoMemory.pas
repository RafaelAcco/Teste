unit UPedidoMemory;

interface

uses
  UPedidoRepository, UPedido, UPedidoItem, Generics.Collections;

type
  TPedidoMemoria = class(TInterfacedObject, TPedidoRepository)
  private
    FLista: TObjectList<TPedido>;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Salvar(APedido: TPedido);
    function GetID(AID: integer): TPedido;
  end;

implementation

constructor TPedidoMemoria.Create;
begin
  FLista := TObjectList<TPedido>.Create(True);
end;

destructor TPedidoMemoria.Destroy;
begin
  FLista.Free;
  inherited;
end;

procedure TPedidoMemoria.Salvar(APedido: TPedido);
begin
  FLista.Add(APedido);
end;

function TPedidoMemoria.GetID(AId: integer): TPedido;
var
  Pedido: TPedido;
begin
  Result := nil;

  for Pedido in FLista do
    if Pedido.Id = AId then
      Exit(Pedido);
end;

end.
