program Teste;

uses
  Forms,
  UFormCliente in 'source\view\UFormCliente.pas' {FormCliente},
  UCliente in 'source\domain\UCliente.pas',
  UClienteRepository in 'source\domain\UClienteRepository.pas',
  UFormMain in 'source\view\UFormMain.pas' {FormMain},
  UClienteService in 'source\application\UClienteService.pas',
  UClienteMemory in 'source\infra\UClienteMemory.pas',
  UClienteController in 'source\controller\UClienteController.pas',
  UProduto in 'source\domain\UProduto.pas',
  UProdutoRepository in 'source\domain\UProdutoRepository.pas',
  UProdutoService in 'source\application\UProdutoService.pas',
  UProdutoMemory in 'source\infra\UProdutoMemory.pas',
  UProdutoController in 'source\controller\UProdutoController.pas',
  UFormProduto in 'source\view\UFormProduto.pas' {FormProduto},
  UPedidoItem in 'source\domain\UPedidoItem.pas',
  UPedido in 'source\domain\UPedido.pas',
  UPedidoRepository in 'source\domain\UPedidoRepository.pas',
  UPedidoMemory in 'source\infra\UPedidoMemory.pas',
  UPedidoService in 'source\application\UPedidoService.pas',
  UPedidoController in 'source\controller\UPedidoController.pas',
  UFormPedido in 'source\view\UFormPedido.pas' {FormPedido};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
