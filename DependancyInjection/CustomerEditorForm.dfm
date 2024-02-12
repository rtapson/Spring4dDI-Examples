object CustomerEditForm: TCustomerEditForm
  Left = 0
  Top = 0
  Caption = 'CustomerEditForm'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 15
  object Button1: TButton
    Left = 448
    Top = 408
    Width = 75
    Height = 25
    Caption = 'Ok'
    ModalResult = 1
    TabOrder = 0
  end
  object Button2: TButton
    Left = 541
    Top = 408
    Width = 75
    Height = 25
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object NameEdit: TLabeledEdit
    Left = 8
    Top = 48
    Width = 121
    Height = 23
    EditLabel.Width = 32
    EditLabel.Height = 15
    EditLabel.Caption = 'Name'
    TabOrder = 2
    Text = ''
  end
  object Button3: TButton
    Left = 8
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Edit Address'
    TabOrder = 3
    OnClick = Button3Click
  end
end
