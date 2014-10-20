object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Trabalhando com ClientDataSet'
  ClientHeight = 356
  ClientWidth = 530
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 530
    Height = 356
    Align = alClient
    BevelInner = bvLowered
    BevelKind = bkFlat
    BorderWidth = 1
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 8
      Top = 24
      Width = 489
      Height = 161
      Caption = 'Modelo:'
      TabOrder = 0
      object DBGrid1: TDBGrid
        Left = 11
        Top = 17
        Width = 463
        Height = 128
        DataSource = DataSource1
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'id'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Width = 280
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valor'
            Visible = True
          end>
      end
    end
    object GroupBox2: TGroupBox
      Left = 8
      Top = 191
      Width = 489
      Height = 146
      Caption = 'Comandos'
      TabOrder = 1
      object DBNavigator1: TDBNavigator
        Left = 11
        Top = 50
        Width = 240
        Height = 25
        DataSource = DataSource1
        Kind = dbnHorizontal
        TabOrder = 0
      end
      object btnAbrir: TsBitBtn
        Left = 10
        Top = 20
        Width = 54
        Height = 24
        Caption = 'Abrir'
        TabOrder = 1
        OnClick = btnAbrirClick
        SkinData.SkinSection = 'BUTTON'
        ImageIndex = 2
        Reflected = True
      end
      object btnFechar: TsBitBtn
        Left = 70
        Top = 20
        Width = 54
        Height = 24
        Caption = 'Fechar'
        TabOrder = 2
        OnClick = btnFecharClick
        SkinData.SkinSection = 'BUTTON'
        ImageIndex = 2
        Reflected = True
      end
      object btnClonar: TsBitBtn
        Left = 270
        Top = 20
        Width = 99
        Height = 24
        Caption = 'Clonar Registro'
        TabOrder = 3
        OnClick = btnClonarClick
        SkinData.SkinSection = 'BUTTON'
        ImageIndex = 2
        Reflected = True
      end
      object btnSalvar: TsBitBtn
        Left = 375
        Top = 20
        Width = 99
        Height = 24
        Caption = 'Salvar em Disco'
        TabOrder = 4
        OnClick = btnSalvarClick
        SkinData.SkinSection = 'BUTTON'
        ImageIndex = 2
        Reflected = True
      end
      object btnLimparTela: TsBitBtn
        Left = 270
        Top = 50
        Width = 99
        Height = 24
        Caption = 'Limpar Tela'
        TabOrder = 5
        OnClick = btnLimparTelaClick
        SkinData.SkinSection = 'BUTTON'
        ImageIndex = 2
        Reflected = True
      end
      object btnCarregar: TsBitBtn
        Left = 375
        Top = 50
        Width = 99
        Height = 24
        Caption = 'Carregar do Disco'
        TabOrder = 6
        OnClick = btnCarregarClick
        SkinData.SkinSection = 'BUTTON'
        ImageIndex = 2
        Reflected = True
      end
      object btncriarIndice: TsBitBtn
        Left = 270
        Top = 80
        Width = 99
        Height = 24
        Caption = 'Criar '#205'ndice Nome'
        TabOrder = 7
        OnClick = btncriarIndiceClick
        SkinData.SkinSection = 'BUTTON'
        ImageIndex = 2
        Reflected = True
      end
      object btnAtivar: TsBitBtn
        Left = 375
        Top = 80
        Width = 99
        Height = 24
        Caption = 'Ativar Log'
        TabOrder = 8
        OnClick = btnAtivarClick
        SkinData.SkinSection = 'BUTTON'
        ImageIndex = 2
        Reflected = True
      end
      object btnDesativar: TsBitBtn
        Left = 270
        Top = 110
        Width = 99
        Height = 24
        Caption = 'Desativar Log'
        TabOrder = 9
        OnClick = btnDesativarClick
        SkinData.SkinSection = 'BUTTON'
        ImageIndex = 2
        Reflected = True
      end
    end
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 352
    Top = 64
    object ClientDataSet1id: TIntegerField
      FieldName = 'id'
    end
    object ClientDataSet1nome: TStringField
      FieldName = 'nome'
      Size = 100
    end
    object ClientDataSet1valor: TBCDField
      FieldName = 'valor'
      Size = 2
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 352
    Top = 112
  end
end
