unit UClienteController;

interface

uses UClienteService, UCliente;

type
  TClienteController = class
  private
    FService: TClienteService;
  public
    constructor Create(AService: TClienteService);
    procedure SalvarCliente(const AId:integer; ANome:String;ADocumento:String;ACidade:String);
    function CarregarCliente(AId: integer) :TCliente;
  end;

implementation

constructor TClienteController.Create(AService: TClienteService);
begin
  FService := AService;
end;

procedure TClienteController.SalvarCliente(const AId:integer; ANome:String;ADocumento:String;ACidade:String);
var
 Cliente : TCliente;
begin
   Cliente := TCliente.Create;
   Cliente.Id := AId;
   Cliente.Nome := ANome;
   Cliente.Documento := ADocumento;
   Cliente.Cidade := ACidade;
   FService.CadastrarCliente(Cliente);
end;

function TClienteController.CarregarCliente(AId: integer) : TCliente;
begin
   Result := FService.CarregarCliente(AId);
end;


end.
