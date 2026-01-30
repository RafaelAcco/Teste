object FormPedido: TFormPedido
  Left = 0
  Top = 0
  Caption = 'FormPedido'
  ClientHeight = 493
  ClientWidth = 755
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 106
  TextHeight = 14
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 11
    Height = 14
    Caption = 'Id'
  end
  object Label11: TLabel
    Left = 447
    Top = 14
    Width = 59
    Height = 14
    Caption = 'Valor Total'
  end
  object EditIDPedido: TEdit
    Left = 33
    Top = 11
    Width = 81
    Height = 22
    TabOrder = 0
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 56
    Width = 712
    Height = 77
    Caption = 'Cliente'
    TabOrder = 1
    object Label2: TLabel
      Left = 8
      Top = 19
      Width = 11
      Height = 14
      Caption = 'Id'
    end
    object Label3: TLabel
      Left = 183
      Top = 19
      Width = 32
      Height = 14
      Caption = 'Nome'
    end
    object Label4: TLabel
      Left = 399
      Top = 19
      Width = 64
      Height = 14
      Caption = 'Documento'
    end
    object Label10: TLabel
      Left = 543
      Top = 19
      Width = 36
      Height = 14
      Caption = 'Cidade'
    end
    object EditIdCliente: TEdit
      Left = 8
      Top = 39
      Width = 73
      Height = 22
      TabOrder = 0
    end
    object EditNomeCliente: TEdit
      Left = 183
      Top = 39
      Width = 194
      Height = 22
      ReadOnly = True
      TabOrder = 1
    end
    object EditDocumentoCliente: TEdit
      Left = 399
      Top = 39
      Width = 138
      Height = 22
      ReadOnly = True
      TabOrder = 2
    end
    object ButtonCarregarCliente: TButton
      Left = 87
      Top = 39
      Width = 75
      Height = 25
      Caption = 'Carregar'
      TabOrder = 3
      OnClick = ButtonCarregarClienteClick
    end
    object EditCidade: TEdit
      Left = 543
      Top = 39
      Width = 138
      Height = 22
      ReadOnly = True
      TabOrder = 4
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 153
    Width = 712
    Height = 272
    Caption = 'Itens'
    TabOrder = 2
    object Label5: TLabel
      Left = 8
      Top = 18
      Width = 59
      Height = 14
      Caption = 'Id Produto'
    end
    object Label6: TLabel
      Left = 183
      Top = 18
      Width = 32
      Height = 14
      Caption = 'Nome'
    end
    object Label7: TLabel
      Left = 399
      Top = 18
      Width = 44
      Height = 14
      Caption = 'Unidade'
    end
    object Label9: TLabel
      Left = 495
      Top = 18
      Width = 72
      Height = 14
      Caption = 'Valor Unitario'
    end
    object Label8: TLabel
      Left = 599
      Top = 18
      Width = 63
      Height = 14
      Caption = 'Quantidade'
    end
    object EditIDProduto: TEdit
      Left = 8
      Top = 38
      Width = 73
      Height = 22
      TabOrder = 0
    end
    object EditNomeProduto: TEdit
      Left = 183
      Top = 38
      Width = 202
      Height = 22
      ReadOnly = True
      TabOrder = 1
    end
    object EditUnidade: TEdit
      Left = 399
      Top = 38
      Width = 82
      Height = 22
      ReadOnly = True
      TabOrder = 2
    end
    object EditValorUnitario: TEdit
      Left = 495
      Top = 38
      Width = 82
      Height = 22
      ReadOnly = True
      TabOrder = 3
    end
    object EditQuantidade: TEdit
      Left = 599
      Top = 38
      Width = 82
      Height = 22
      TabOrder = 4
    end
    object ButtonAdicionarItem: TButton
      Left = 552
      Top = 84
      Width = 129
      Height = 25
      Caption = 'Adicionar Item'
      TabOrder = 5
      OnClick = ButtonAdicionarItemClick
    end
    object ButtonCarregarProduto: TButton
      Left = 89
      Top = 37
      Width = 75
      Height = 25
      Caption = 'Carregar'
      TabOrder = 6
      OnClick = ButtonCarregarProdutoClick
    end
    object StringGridItem: TStringGrid
      Left = 3
      Top = 127
      Width = 705
      Height = 137
      TabOrder = 7
    end
  end
  object ButtonCarregar: TButton
    Left = 120
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Carregar'
    TabOrder = 3
    OnClick = ButtonCarregarClick
  end
  object ButtonSalvar: TButton
    Left = 641
    Top = 439
    Width = 75
    Height = 25
    Caption = 'Salvar'
    ModalResult = 1
    TabOrder = 4
    OnClick = ButtonSalvarClick
  end
  object EditValorTotalPedido: TEdit
    Left = 512
    Top = 11
    Width = 121
    Height = 22
    ReadOnly = True
    TabOrder = 5
  end
end
