unit UCliente;

interface

type

  TCliente = class
  private
    FId: integer;
    FNome: string;
    FDocumento: string;
    FCidade: string;

  public
    constructor Create();

    property Id: integer read FId write FId;
    property Nome: string read FNome write FNome;
    property Documento: string read FDocumento write FDocumento;
    property Cidade: string read FCidade write FCidade;


  end;

implementation

constructor TCliente.Create();
begin
   FId := 0;
   FNome:= '';
   FDocumento:= '';
   FCidade:= '';
end;


end.
