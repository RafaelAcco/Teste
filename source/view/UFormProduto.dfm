object FormProduto: TFormProduto
  Left = 0
  Top = 0
  Caption = 'FormProduto'
  ClientHeight = 299
  ClientWidth = 334
  Color = clBtnHighlight
  Constraints.MaxHeight = 350
  Constraints.MaxWidth = 350
  Constraints.MinHeight = 340
  Constraints.MinWidth = 340
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
    Left = 55
    Top = 83
    Width = 40
    Height = 14
    Caption = 'Nome :'
  end
  object LabelUnidade: TLabel
    Left = 51
    Top = 126
    Width = 44
    Height = 14
    Caption = 'Unidade'
  end
  object LabelValorVenda: TLabel
    Left = 11
    Top = 171
    Width = 84
    Height = 14
    Caption = 'Valor de Venda'
  end
  object LabelID: TLabel
    Left = 79
    Top = 40
    Width = 12
    Height = 14
    Caption = 'ID'
  end
  object EditNome: TEdit
    Left = 112
    Top = 80
    Width = 197
    Height = 22
    TabOrder = 1
  end
  object EditValorVenda: TEdit
    Left = 112
    Top = 168
    Width = 197
    Height = 22
    TabOrder = 3
    OnExit = EditValorVendaExit
  end
  object ButtonSalvar: TButton
    Left = 234
    Top = 227
    Width = 75
    Height = 25
    Caption = 'Salvar'
    ModalResult = 1
    TabOrder = 4
    OnClick = ButtonSalvarClick
  end
  object EditID: TEdit
    Left = 112
    Top = 37
    Width = 97
    Height = 22
    TabOrder = 0
  end
  object EditUnidade: TEdit
    Left = 112
    Top = 123
    Width = 197
    Height = 22
    TabOrder = 2
  end
  object ButtonCarregar: TButton
    Left = 234
    Top = 36
    Width = 75
    Height = 25
    Caption = 'Carregar'
    TabOrder = 5
    OnClick = ButtonCarregarClick
  end
end
