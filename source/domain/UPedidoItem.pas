unit UPedidoItem;

interface

type

   TPedidoItem = class
   private
      FNome: string;
      FUnidade: string;
      FValorUnitario: double;
      FQuantidade:double;
      FValorTotal: double;
      function GetTotal() : double;
   public
      constructor Create();

      property Nome: string read FNome write FNome;
      property Unidade: string read FUnidade write FUnidade;
      property ValorUnitario: double read FValorUnitario write FValorUnitario;
      property Quantidade : double read FQuantidade write FQuantidade;
      property ValorTotal: double read GetTotal;
   end;

implementation

constructor TPedidoItem.Create();
begin
   FNome:= '';
   FUnidade:= '';
   FValorUnitario:= 0;
   FQuantidade:=0;
end;

function TPedidoItem.GetTotal():double;
begin
   Result := FQuantidade * FValorUnitario;
end;


end.
