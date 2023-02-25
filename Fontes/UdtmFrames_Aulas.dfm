object dtmFrames_Aulas: TdtmFrames_Aulas
  OldCreateOrder = False
  Height = 420
  Width = 673
  object qryBuscaAulas: TFDQuery
    Connection = dtmMain.FDConnectionMain
    SQL.Strings = (
      'SELECT AULAS.TITULO, AULAS.IMAGEM, AULAS.CODIGO'
      'FROM AULAS'
      'WHERE AULAS.COD_TURMA =:COD_TURMA'
      ''
      ''
      ''
      ''
      '')
    Left = 32
    Top = 32
    ParamData = <
      item
        Name = 'COD_TURMA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryBuscaAulasTITULO: TStringField
      FieldName = 'TITULO'
      Origin = 'TITULO'
      Size = 200
    end
    object qryBuscaAulasIMAGEM: TBlobField
      FieldName = 'IMAGEM'
      Origin = 'IMAGEM'
    end
    object qryBuscaAulasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object qryBuscaConteudo: TFDQuery
    Connection = dtmMain.FDConnectionMain
    SQL.Strings = (
      
        'SELECT AULAS_CONTEUDOS.DESCRICAO, AULAS_CONTEUDOS.codigo FROM AU' +
        'LAS_CONTEUDOS'
      'WHERE AULAS_CONTEUDOS.COD_AULA =:COD_AULA')
    Left = 160
    Top = 32
    ParamData = <
      item
        Name = 'COD_AULA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryBuscaConteudoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 200
    end
    object qryBuscaConteudoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object qryBuscaExercicio: TFDQuery
    Connection = dtmMain.FDConnectionMain
    SQL.Strings = (
      
        'SELECT AULAS_EXERCICIOS.codigo, AULAS_EXERCICIOS.DESCRICAO, AULA' +
        'S_EXERCICIOS.COD_CONTEUDO FROM AULAS_EXERCICIOS'
      'WHERE AULAS_EXERCICIOS.COD_CONTEUDO =:COD_CONTEUDO')
    Left = 272
    Top = 32
    ParamData = <
      item
        Name = 'COD_CONTEUDO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryBuscaExercicioDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 120
    end
    object qryBuscaExercicioCOD_CONTEUDO: TIntegerField
      FieldName = 'COD_CONTEUDO'
      Origin = 'COD_CONTEUDO'
    end
    object qryBuscaExercicioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
end
