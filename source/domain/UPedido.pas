unit UPedido;

interface

uses  UCliente, UPedidoItem, Generics.Collections;

type

   TPedido = class
   private
      FId: integer;
      FCliente: TCliente;
      FPedidoItens: TObjectList<TPedidoItem>;
      FValorTotal: double;
      function GetTotal(): double;
   public
      constructor Create();

      property Id: integer read FId write FId;
      property Cliente: TCliente read FCliente write FCliente;
      property PedidoItens: TObjectList<TPedidoItem> read FPedidoItens write FPedidoItens;
      property ValorTotal: double read GetTotal;
   end;

implementation

constructor TPedido.Create();
var
   PedidoItem:TPedidoItem;
begin
   FId := 0;
   FCliente := TCliente.Create;
   FPedidoItens := TObjectList<TPedidoItem>.Create(True);
end;


function TPedido.GetTotal(): double;
var
   PedidoItem:TPedidoItem;
begin
   for PedidoItem in FPedidoItens do
      Result := Result + PedidoItem.ValorTotal;
end;


end.
