unit UPedidoService;

interface

uses
  UPedido,UCliente,UPedidoItem, UPedidoRepository, Generics.Collections;

type
  TPedidoService = class
  private
    FRepository: TPedidoRepository;
  public
    constructor Create(ARepository: TPedidoRepository);
    procedure Cadastrar(APedido : TPedido);
    function Carregar(AId: integer): TPedido;
  end;

implementation

constructor TPedidoService.Create(ARepository: TPedidoRepository);
begin
  FRepository := ARepository;
end;

procedure TPedidoService.Cadastrar(APedido : TPedido);
begin
   FRepository.Salvar(APedido);
end;

function TPedidoService.Carregar(AId: integer): TPedido;
begin
   Result := FRepository.GetID(AId);
end;

end.
