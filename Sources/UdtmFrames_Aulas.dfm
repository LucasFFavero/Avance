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
  object qryBuscaConteudoClicado: TFDQuery
    Connection = dtmMain.FDConnectionMain
    SQL.Strings = (
      
        'select AULAS_CONTEUDOS.CODIGO, AULAS_CONTEUDOS.COD_AULA, AULAS_C' +
        'ONTEUDOS.DESCRICAO, AULAS_CONTEUDOS.TIPO,'
      
        '       AULAS_CONTEUDOS.IMAGEM, AULAS_CONTEUDOS.VIDEO, AULAS_CONT' +
        'EUDOS.AUDIO, AULAS_CONTEUDOS.RESUMO,'
      '       AULAS_CONTEUDOS.RESUMO_IMAGEM,'
      ''
      '       case'
      '         when AULAS_CONTEUDOS.IMAGEM > 0 then 1'
      '         else 0'
      '       end as IMAGEM_1,'
      ''
      '       case'
      '         when AULAS_CONTEUDOS.VIDEO > 0 then 1'
      '         else 0'
      '       end as VIDEO_1,'
      ''
      '       case'
      '         when AULAS_CONTEUDOS.AUDIO > 0 then 1'
      '         else 0'
      '       end as AUDIO_1'
      ''
      'from AULAS_CONTEUDOS'
      'where AULAS_CONTEUDOS.CODIGO = :COD_CONTEUDO   ')
    Left = 160
    Top = 136
    ParamData = <
      item
        Name = 'COD_CONTEUDO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryBuscaConteudoClicadoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryBuscaConteudoClicadoCOD_AULA: TIntegerField
      FieldName = 'COD_AULA'
      Origin = 'COD_AULA'
    end
    object qryBuscaConteudoClicadoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 200
    end
    object qryBuscaConteudoClicadoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object qryBuscaConteudoClicadoIMAGEM: TBlobField
      FieldName = 'IMAGEM'
      Origin = 'IMAGEM'
    end
    object qryBuscaConteudoClicadoVIDEO: TBlobField
      FieldName = 'VIDEO'
      Origin = 'VIDEO'
    end
    object qryBuscaConteudoClicadoAUDIO: TBlobField
      FieldName = 'AUDIO'
      Origin = 'AUDIO'
    end
    object qryBuscaConteudoClicadoRESUMO: TStringField
      FieldName = 'RESUMO'
      Origin = 'RESUMO'
      Size = 2000
    end
    object qryBuscaConteudoClicadoRESUMO_IMAGEM: TBlobField
      FieldName = 'RESUMO_IMAGEM'
      Origin = 'RESUMO_IMAGEM'
    end
    object qryBuscaConteudoClicadoIMAGEM_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IMAGEM_1'
      Origin = 'IMAGEM_1'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryBuscaConteudoClicadoVIDEO_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'VIDEO_1'
      Origin = 'VIDEO_1'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryBuscaConteudoClicadoAUDIO_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'AUDIO_1'
      Origin = 'AUDIO_1'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object qryBuscaExercicioClicado: TFDQuery
    Connection = dtmMain.FDConnectionMain
    SQL.Strings = (
      'SELECT AULAS_EXERCICIOS.*,'
      ' case'
      '         when AULAS_EXERCICIOS.IMAGEM > 0 then 1'
      '         else 0'
      '       end as IMAGEM_1,'
      ''
      '       case'
      '         when AULAS_EXERCICIOS.VIDEO > 0 then 1'
      '         else 0'
      '       end as VIDEO_1'
      'from AULAS_EXERCICIOS'
      'WHERE AULAS_EXERCICIOS.CODIGO =:COD_EXERCICIO')
    Left = 160
    Top = 224
    ParamData = <
      item
        Name = 'COD_EXERCICIO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryBuscaExercicioClicadoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryBuscaExercicioClicadoCOD_AULA: TIntegerField
      FieldName = 'COD_AULA'
      Origin = 'COD_AULA'
    end
    object qryBuscaExercicioClicadoCOD_CONTEUDO: TIntegerField
      FieldName = 'COD_CONTEUDO'
      Origin = 'COD_CONTEUDO'
    end
    object qryBuscaExercicioClicadoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 120
    end
    object qryBuscaExercicioClicadoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object qryBuscaExercicioClicadoIMAGEM: TBlobField
      FieldName = 'IMAGEM'
      Origin = 'IMAGEM'
    end
    object qryBuscaExercicioClicadoVIDEO: TBlobField
      FieldName = 'VIDEO'
      Origin = 'VIDEO'
    end
    object qryBuscaExercicioClicadoTITULO: TStringField
      FieldName = 'TITULO'
      Origin = 'TITULO'
      Size = 200
    end
    object qryBuscaExercicioClicadoIMAGEM_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IMAGEM_1'
      Origin = 'IMAGEM_1'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryBuscaExercicioClicadoVIDEO_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'VIDEO_1'
      Origin = 'VIDEO_1'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object dtsBuscaExercicioClicado: TDataSource
    DataSet = qryBuscaExercicioClicado
    Left = 304
    Top = 224
  end
  object qryBuscaExerciciosQuestoes: TFDQuery
    Connection = dtmMain.FDConnectionMain
    SQL.Strings = (
      'SELECT *'
      'FROM AULAS_EXERCICIOS_QUESTOES'
      
        'WHERE AULAS_EXERCICIOS_QUESTOES.COD_AULAS_EXERCICIOS =:COD_EXERC' +
        'ICIO')
    Left = 160
    Top = 304
    ParamData = <
      item
        Name = 'COD_EXERCICIO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryBuscaExerciciosQuestoesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryBuscaExerciciosQuestoesCOD_AULAS_EXERCICIOS: TIntegerField
      FieldName = 'COD_AULAS_EXERCICIOS'
      Origin = 'COD_AULAS_EXERCICIOS'
    end
    object qryBuscaExerciciosQuestoesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 200
    end
    object qryBuscaExerciciosQuestoesIMAGEM: TBlobField
      FieldName = 'IMAGEM'
      Origin = 'IMAGEM'
    end
    object qryBuscaExerciciosQuestoesCORRETA: TSmallintField
      FieldName = 'CORRETA'
      Origin = 'CORRETA'
    end
  end
  object dtsBuscaExerciciosQuestoes: TDataSource
    DataSet = qryBuscaExerciciosQuestoes
    Left = 312
    Top = 304
  end
end
