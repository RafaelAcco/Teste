unit UClienteService;

interface

uses
  UCliente, UClienteRepository;

type
  TClienteService = class
  private
    FRepository: TClienteRepository;
  public
    constructor Create(ARepository: TClienteRepository);
    procedure CadastrarCliente(ACliente:TCliente);
    function CarregarCliente(AId: integer): TCliente;
  end;

implementation

constructor TClienteService.Create(ARepository: TClienteRepository);
begin
  FRepository := ARepository;
end;

procedure TClienteService.CadastrarCliente(ACliente:TCliente);
begin
   FRepository.Salvar(ACliente);
end;

function TClienteService.CarregarCliente(AId: integer): TCliente;
begin
   Result :=  FRepository.GetID(AId);
end;

end.
