unit UProduto;

interface

type

   TProduto = class
   private
      FId: integer;
      FNome: string;
      FUnidade: string;
      FValorVenda: double;
   public
      constructor Create();

      property Id: integer read FId write FId;
      property Nome: string read FNome write FNome;
      property Unidade: string read FUnidade write FUnidade;
      property ValorVenda: double read FValorVenda write FValorVenda;
   end;

implementation

constructor TProduto.Create();
begin
   FId:= 0;
   FNome:= '';
   FUnidade:= '';
   FValorVenda:= 0;
end;

end.
