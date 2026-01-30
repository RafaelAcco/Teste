unit UPedidoRepository;

interface

uses UPedido;

type
  TPedidoRepository = interface
    procedure Salvar(Pedido: TPedido);
    function GetID(ID: integer): TPedido;
  end;


implementation

end.
