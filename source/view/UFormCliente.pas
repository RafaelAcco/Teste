unit UFormCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls,UCliente,UClienteController;

type
  TFormCliente = class(TForm)
    Label1: TLabel;
    EditNome: TEdit;
    LabelCPFCNPJ: TLabel;
    LabelCidade: TLabel;
    EditCidade: TEdit;
    ButtonSalvar: TButton;
    LabelID: TLabel;
    EditID: TEdit;
    EditCPFCNPJ: TEdit;
    ButtonCarregar: TButton;
    constructor Create(AOwner: TComponent; AController: TClienteController);
    procedure ButtonCarregarClick(Sender: TObject);
    procedure ButtonSalvarClick(Sender: TObject);
  private
    FController: TClienteController;
  public
    { Public declarations }
  end;


implementation

{$R *.dfm}


constructor TFormCliente.Create(AOwner: TComponent; AController: TClienteController);
begin
   inherited Create(AOwner);
   FController := AController;
end;

procedure TFormCliente.ButtonCarregarClick(Sender: TObject);
var
   Cliente : TCliente;
begin
   Cliente := nil;
  try
    Cliente := FController.CarregarCliente(StrToInt(EditID.Text));

    if not Assigned(Cliente) then
    begin
      ShowMessage('Cliente não encontrado');
      Exit;
    end;

    EditNome.Text := Cliente.Nome;
    EditCPFCNPJ.Text := Cliente.Documento;
    EditCidade.Text := Cliente.Cidade;

  except
    on E: Exception do
      ShowMessage(E.Message);
  end;


end;


procedure TFormCliente.ButtonSalvarClick(Sender: TObject);
begin
   try
    FController.SalvarCliente(
      StrToInt(EditID.Text),
      EditNome.Text,
      EditCPFCNPJ.Text,
      EditCidade.Text
    );

    ShowMessage('Cliente salvo com sucesso');
  except
    on E: Exception do
      ShowMessage(E.Message);
  end;
end;


end.
