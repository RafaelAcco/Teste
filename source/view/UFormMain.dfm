object FormMain: TFormMain
  Left = 0
  Top = 0
  Caption = 'FormMain'
  ClientHeight = 259
  ClientWidth = 186
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 106
  TextHeight = 14
  object ButtonClientes: TButton
    Left = 48
    Top = 48
    Width = 89
    Height = 49
    Caption = 'Clientes'
    TabOrder = 0
    OnClick = ButtonClientesClick
  end
  object ButtonProdutos: TButton
    Left = 48
    Top = 112
    Width = 89
    Height = 41
    Caption = 'Produtos'
    TabOrder = 1
    OnClick = ButtonProdutosClick
  end
  object ButtonPedido: TButton
    Left = 48
    Top = 176
    Width = 89
    Height = 41
    Caption = 'Pedidos'
    TabOrder = 2
    OnClick = ButtonPedidoClick
  end
end
