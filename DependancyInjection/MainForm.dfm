object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  object POSValidateAddress: TButton
    Left = 24
    Top = 32
    Width = 273
    Height = 25
    Caption = 'Create POS Customer and Validate Address'
    TabOrder = 0
    OnClick = POSValidateAddressClick
  end
  object OEValidateAddress: TButton
    Left = 24
    Top = 72
    Width = 273
    Height = 25
    Caption = 'Create OE Customer and Validate Address'
    TabOrder = 1
    OnClick = OEValidateAddressClick
  end
  object Button1: TButton
    Left = 303
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 2
  end
end
