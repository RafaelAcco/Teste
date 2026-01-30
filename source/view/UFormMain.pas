unit UFormMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,
  UFormCliente,UClienteController,UClienteService,UClienteRepository,UClienteMemory,
  UFormProduto,UProdutoController,UProdutoService,UProdutoRepository,UProdutoMemory,
  UFormPedido,UPedidoController,UPedidoService,UPedidoRepository,UPedidoMemory;

type
  TFormMain = class(TForm)
    ButtonClientes: TButton;
    ButtonProdutos: TButton;
    ButtonPedido: TButton;
    procedure ButtonClientesClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ButtonProdutosClick(Sender: TObject);
    procedure ButtonPedidoClick(Sender: TObject);
  private
    FControllerCliente : TClienteController;
    FControllerProduto : TProdutoController;
    FControllerPedido : TPedidoController;
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;


implementation

{$R *.dfm}

procedure TFormMain.ButtonClientesClick(Sender: TObject);
begin
   with TFormCliente.Create(Application,FControllerCliente) do
   begin
      ShowModal;
   end;
end;

procedure TFormMain.ButtonPedidoClick(Sender: TObject);
begin
   with TFormPedido.Create(Application,FControllerPedido,FControllerProduto) do
   begin
      ShowModal;
   end;
end;

procedure TFormMain.ButtonProdutosClick(Sender: TObject);
begin
   with TFormProduto.Create(Application,FControllerProduto) do
   begin
      ShowModal;
   end;
end;

procedure TFormMain.FormCreate(Sender: TObject);
var
  RepositoryCliente: TClienteRepository;
  ServiceCliente: TClienteService;
  RepositoryProduto: TProdutoRepository;
  ServiceProduto: TProdutoService;

  RepositoryPedido: TPedidoRepository;
  ServicePedido: TPedidoService;
begin
  RepositoryCliente := TClienteMemoria.Create;
  ServiceCliente := TClienteService.Create(RepositoryCliente);
  FControllerCliente := TClienteController.Create(ServiceCliente);

  RepositoryProduto := TProdutoMemoria.Create;
  ServiceProduto := TProdutoService.Create(RepositoryProduto);
  FControllerProduto := TProdutoController.Create(ServiceProduto);

  RepositoryPedido := TPedidoMemoria.Create;
  ServicePedido := TPedidoService.Create(RepositoryPedido);
  FControllerPedido := TPedidoController.Create(ServicePedido,ServiceCliente);
end;


procedure TFormMain.FormDestroy(Sender: TObject);
begin
   FControllerCliente.Free;
end;

end.
