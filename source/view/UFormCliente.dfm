object FormCliente: TFormCliente
  Left = 0
  Top = 0
  Caption = 'FormCliente'
  ClientHeight = 299
  ClientWidth = 324
  Color = clBtnHighlight
  Constraints.MaxHeight = 340
  Constraints.MaxWidth = 340
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
    Left = 32
    Top = 83
    Width = 40
    Height = 14
    Caption = 'Nome :'
  end
  object LabelCPFCNPJ: TLabel
    Left = 20
    Top = 126
    Width = 52
    Height = 14
    Caption = 'CPF/CNPJ'
  end
  object LabelCidade: TLabel
    Left = 32
    Top = 171
    Width = 44
    Height = 14
    Caption = 'Cidade :'
  end
  object LabelID: TLabel
    Left = 32
    Top = 40
    Width = 12
    Height = 14
    Caption = 'ID'
  end
  object EditNome: TEdit
    Left = 78
    Top = 80
    Width = 197
    Height = 22
    TabOrder = 1
  end
  object EditCidade: TEdit
    Left = 78
    Top = 168
    Width = 197
    Height = 22
    TabOrder = 3
  end
  object ButtonSalvar: TButton
    Left = 200
    Top = 227
    Width = 75
    Height = 25
    Caption = 'Salvar'
    ModalResult = 1
    TabOrder = 4
    OnClick = ButtonSalvarClick
  end
  object EditID: TEdit
    Left = 78
    Top = 37
    Width = 109
    Height = 22
    TabOrder = 0
  end
  object EditCPFCNPJ: TEdit
    Left = 78
    Top = 123
    Width = 197
    Height = 22
    TabOrder = 2
  end
  object ButtonCarregar: TButton
    Left = 200
    Top = 36
    Width = 75
    Height = 25
    Caption = 'Carregar'
    TabOrder = 5
    OnClick = ButtonCarregarClick
  end
end
