unit UClienteMemory;

interface

uses
  UClienteRepository, UCliente, Generics.Collections;

type
  TClienteMemoria = class(TInterfacedObject, TClienteRepository)
  private
    FLista: TObjectList<TCliente>;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Salvar(ACliente: TCliente);
    function GetID(AID: integer): TCliente;
  end;

implementation

constructor TClienteMemoria.Create;
begin
  FLista := TObjectList<TCliente>.Create(True);
end;

destructor TClienteMemoria.Destroy;
begin
  FLista.Free;
  inherited;
end;

procedure TClienteMemoria.Salvar(ACliente: TCliente);
begin
   FLista.Add(ACliente);
end;

function TClienteMemoria.GetID(AId: integer): TCliente;
var
  Cliente: TCliente;
begin
  Result := nil;

  for Cliente in FLista do
    if Cliente.Id = AId then
      Exit(Cliente);
end;

end.
