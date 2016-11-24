object RegExpForm: TRegExpForm
  Left = 0
  Top = 0
  Caption = 'RegExpForm'
  ClientHeight = 53
  ClientWidth = 253
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    253
    53)
  PixelsPerInch = 96
  TextHeight = 13
  object Input: TLabeledEdit
    Left = 8
    Top = 24
    Width = 237
    Height = 21
    Anchors = [akLeft, akRight, akBottom]
    AutoSelect = False
    Ctl3D = True
    EditLabel.Width = 26
    EditLabel.Height = 13
    EditLabel.Caption = 'Input'
    ParentCtl3D = False
    TabOrder = 0
    Text = '101'
    OnChange = InputChange
  end
end
