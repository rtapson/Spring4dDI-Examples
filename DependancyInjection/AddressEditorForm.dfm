object AddressEditForm: TAddressEditForm
  Left = 0
  Top = 0
  Caption = 'Edit Address'
  ClientHeight = 358
  ClientWidth = 452
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnShow = FormShow
  DesignSize = (
    452
    358)
  TextHeight = 15
  object Street1Edit: TLabeledEdit
    Left = 8
    Top = 56
    Width = 121
    Height = 23
    EditLabel.Width = 39
    EditLabel.Height = 15
    EditLabel.Caption = 'Street 1'
    TabOrder = 0
    Text = ''
  end
  object Street2Edit: TLabeledEdit
    Left = 8
    Top = 104
    Width = 121
    Height = 23
    EditLabel.Width = 39
    EditLabel.Height = 15
    EditLabel.Caption = 'Street 2'
    TabOrder = 1
    Text = ''
  end
  object Street3Edit: TLabeledEdit
    Left = 8
    Top = 160
    Width = 121
    Height = 23
    EditLabel.Width = 39
    EditLabel.Height = 15
    EditLabel.Caption = 'Street 3'
    TabOrder = 2
    Text = ''
  end
  object CityEdit: TLabeledEdit
    Left = 8
    Top = 216
    Width = 121
    Height = 23
    EditLabel.Width = 21
    EditLabel.Height = 15
    EditLabel.Caption = 'City'
    TabOrder = 3
    Text = ''
  end
  object StateEdit: TLabeledEdit
    Left = 168
    Top = 216
    Width = 121
    Height = 23
    EditLabel.Width = 26
    EditLabel.Height = 15
    EditLabel.Caption = 'State'
    TabOrder = 4
    Text = ''
  end
  object PostalCodeEdit: TLabeledEdit
    Left = 320
    Top = 216
    Width = 121
    Height = 23
    EditLabel.Width = 63
    EditLabel.Height = 15
    EditLabel.Caption = 'Postal Code'
    TabOrder = 5
    Text = ''
  end
  object CountryEdit: TLabeledEdit
    Left = 8
    Top = 272
    Width = 121
    Height = 23
    EditLabel.Width = 43
    EditLabel.Height = 15
    EditLabel.Caption = 'Country'
    TabOrder = 6
    Text = ''
  end
  object Button1: TButton
    Left = 266
    Top = 325
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Ok'
    Default = True
    ModalResult = 1
    TabOrder = 7
  end
  object Button2: TButton
    Left = 359
    Top = 325
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 8
  end
end
