unit UClienteRepository;

interface

uses UCliente;

type
  TClienteRepository = interface
    procedure Salvar(Cliente: TCliente);
    function GetID(ID: integer): TCliente;
  end;


implementation

end.
