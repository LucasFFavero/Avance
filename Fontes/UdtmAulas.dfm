object dtmAulas: TdtmAulas
  OldCreateOrder = False
  Height = 451
  Width = 809
  object qryBuscaAulas: TFDQuery
    Connection = dtmMain.FDConnectionMain
    SQL.Strings = (
      
        'SELECT AULAS.CODIGO, AULAS.COD_TURMA, TURMAS.DESCRICAO, AULAS.TI' +
        'TULO, AULAS.IMAGEM,'
      '       CASE'
      '         WHEN AULAS.IMAGEM > 0 THEN 1'
      '         ELSE 0'
      '       END AS IMAGEM_1'
      'FROM AULAS'
      'INNER JOIN TURMAS ON (AULAS.COD_TURMA = TURMAS.CODIGO)   ')
    Left = 224
    Top = 16
    object qryBuscaAulasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '0000#'
      EditFormat = '0000#'
    end
    object qryBuscaAulasCOD_TURMA: TIntegerField
      FieldName = 'COD_TURMA'
      Origin = 'COD_TURMA'
    end
    object qryBuscaAulasDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 120
    end
    object qryBuscaAulasTITULO: TStringField
      FieldName = 'TITULO'
      Origin = 'TITULO'
      Size = 200
    end
    object qryBuscaAulasIMAGEM: TBlobField
      Alignment = taCenter
      FieldName = 'IMAGEM'
      Origin = 'IMAGEM'
    end
    object qryBuscaAulasIMAGEM_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IMAGEM_1'
      Origin = 'IMAGEM_1'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object dtsBuscaAulas: TDataSource
    DataSet = qryBuscaAulas
    Left = 320
    Top = 16
  end
  object qryAulas: TFDQuery
    AfterScroll = qryAulasAfterScroll
    Connection = dtmMain.FDConnectionMain
    Transaction = Transaction
    UpdateTransaction = Transaction
    FetchOptions.AssignedValues = [evMode, evCursorKind]
    FetchOptions.Mode = fmAll
    FetchOptions.CursorKind = ckDefault
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_ESCOLA_ID'
    UpdateOptions.KeyFields = 'CODIGO'
    UpdateOptions.AutoIncFields = 'CODIGO'
    UpdateObject = UpdateSQL
    SQL.Strings = (
      
        'SELECT AULAS.CODIGO, AULAS.COD_TURMA, AULAS.TITULO, AULAS.IMAGEM' +
        ' FROM AULAS'
      'ORDER BY AULAS.CODIGO')
    Left = 32
    Top = 16
    object qryAulasCODIGO: TFDAutoIncField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      DisplayFormat = '0000#'
      IdentityInsert = True
    end
    object qryAulasCOD_TURMA: TIntegerField
      FieldName = 'COD_TURMA'
      Origin = 'COD_TURMA'
    end
    object qryAulasTITULO: TStringField
      FieldName = 'TITULO'
      Origin = 'TITULO'
      Size = 200
    end
    object qryAulasIMAGEM: TBlobField
      Alignment = taCenter
      FieldName = 'IMAGEM'
      Origin = 'IMAGEM'
    end
  end
  object Transaction: TFDTransaction
    Connection = dtmMain.FDConnectionMain
    Left = 32
    Top = 65
  end
  object UpdateSQL: TFDUpdateSQL
    Connection = dtmMain.FDConnectionMain
    InsertSQL.Strings = (
      'INSERT INTO AULAS'
      '(COD_TURMA, TITULO, IMAGEM)'
      'VALUES (:NEW_COD_TURMA, :NEW_TITULO, :NEW_IMAGEM)'
      'RETURNING CODIGO')
    ModifySQL.Strings = (
      'UPDATE AULAS'
      
        'SET COD_TURMA = :NEW_COD_TURMA, TITULO = :NEW_TITULO, IMAGEM = :' +
        'NEW_IMAGEM'
      'WHERE CODIGO = :OLD_CODIGO'
      'RETURNING CODIGO')
    DeleteSQL.Strings = (
      'DELETE FROM AULAS'
      'WHERE CODIGO = :OLD_CODIGO')
    FetchRowSQL.Strings = (
      'SELECT CODIGO, COD_TURMA, TITULO, IMAGEM'
      'FROM AULAS'
      'WHERE CODIGO = :OLD_CODIGO')
    Left = 32
    Top = 113
  end
  object dtsAulas: TDataSource
    DataSet = qryAulas
    OnStateChange = dtsAulasStateChange
    Left = 104
    Top = 16
  end
  object qryTurmas: TFDQuery
    Connection = dtmMain.FDConnectionMain
    SQL.Strings = (
      'SELECT TURMAS.CODIGO, TURMAS.DESCRICAO'
      'FROM TURMAS  ')
    Left = 224
    Top = 65
    object qryTurmasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryTurmasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 120
    end
  end
  object dtsTurmas: TDataSource
    DataSet = qryTurmas
    Left = 320
    Top = 65
  end
  object qryConteudos: TFDQuery
    AfterScroll = qryConteudosAfterScroll
    Connection = dtmMain.FDConnectionMain
    FetchOptions.AssignedValues = [evMode, evCursorKind]
    FetchOptions.Mode = fmAll
    FetchOptions.CursorKind = ckDefault
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_ESCOLA_ID'
    UpdateOptions.KeyFields = 'CODIGO'
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      
        'select AULAS_CONTEUDOS.CODIGO, AULAS_CONTEUDOS.COD_AULA, AULAS_C' +
        'ONTEUDOS.DESCRICAO,'
      '       AULAS_CONTEUDOS.RESUMO, AULAS_CONTEUDOS.TIPO,'
      '       case'
      '         when AULAS_CONTEUDOS.IMAGEM > 0 then 1'
      '         else 0'
      '       end as IMAGEM_1,'
      '       case'
      '         when AULAS_CONTEUDOS.VIDEO > 0 then 1'
      '         else 0'
      '       end as VIDEO_1,'
      '       case'
      '         when AULAS_CONTEUDOS.AUDIO > 0 then 1'
      '         else 0'
      '       end as AUDIO_1,'
      '       case'
      '         when AULAS_CONTEUDOS.RESUMO_IMAGEM > 0 then 1'
      '         else 0'
      '       end as RESUMO_IMAGEM_1'
      'from AULAS_CONTEUDOS'
      'where AULAS_CONTEUDOS.COD_AULA = :COD_AULA'
      'order by AULAS_CONTEUDOS.CODIGO  ')
    Left = 32
    Top = 200
    ParamData = <
      item
        Name = 'COD_AULA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryConteudosCODIGO: TFDAutoIncField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      DisplayFormat = '0000#'
      IdentityInsert = True
    end
    object qryConteudosCOD_AULA: TIntegerField
      FieldName = 'COD_AULA'
      Origin = 'COD_AULA'
    end
    object qryConteudosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 200
    end
    object qryConteudosRESUMO: TStringField
      FieldName = 'RESUMO'
      Origin = 'RESUMO'
      Size = 2000
    end
    object qryConteudosTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object qryConteudosIMAGEM_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IMAGEM_1'
      Origin = 'IMAGEM_1'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryConteudosVIDEO_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'VIDEO_1'
      Origin = 'VIDEO_1'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryConteudosAUDIO_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'AUDIO_1'
      Origin = 'AUDIO_1'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryConteudosRESUMO_IMAGEM_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'RESUMO_IMAGEM_1'
      Origin = 'RESUMO_IMAGEM_1'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object dtsConteudos: TDataSource
    DataSet = qryConteudos
    Left = 104
    Top = 200
  end
  object qryExercicios: TFDQuery
    AfterScroll = qryExerciciosAfterScroll
    Connection = dtmMain.FDConnectionMain
    FetchOptions.AssignedValues = [evMode, evCursorKind]
    FetchOptions.Mode = fmAll
    FetchOptions.CursorKind = ckDefault
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_ESCOLA_ID'
    UpdateOptions.KeyFields = 'CODIGO'
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      
        'SELECT AULAS_EXERCICIOS.CODIGO, AULAS_EXERCICIOS.COD_AULA, AULAS' +
        '_EXERCICIOS.COD_CONTEUDO,'
      
        '       AULAS_CONTEUDOS.DESCRICAO AS CONTEUDO, AULAS_EXERCICIOS.D' +
        'ESCRICAO, AULAS_EXERCICIOS.TITULO,'
      '       AULAS_EXERCICIOS.TIPO,'
      '        case'
      '         when AULAS_EXERCICIOS.IMAGEM > 0 then 1'
      '         else 0'
      '       end as IMAGEM_1,'
      '         case'
      '         when AULAS_EXERCICIOS.VIDEO > 0 then 1'
      '         else 0'
      '       end as VIDEO_1'
      'FROM AULAS_EXERCICIOS'
      
        'INNER JOIN AULAS_CONTEUDOS ON (AULAS_EXERCICIOS.COD_CONTEUDO = A' +
        'ULAS_CONTEUDOS.CODIGO)'
      'WHERE AULAS_EXERCICIOS.COD_AULA = :COD_AULA'
      'AND AULAS_EXERCICIOS.COD_CONTEUDO = :COD_CONTEUDO'
      'ORDER BY AULAS_EXERCICIOS.CODIGO')
    Left = 32
    Top = 256
    ParamData = <
      item
        Name = 'COD_AULA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'COD_CONTEUDO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryExerciciosCODIGO: TFDAutoIncField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      DisplayFormat = '0000#'
      IdentityInsert = True
    end
    object qryExerciciosCOD_AULA: TIntegerField
      FieldName = 'COD_AULA'
      Origin = 'COD_AULA'
    end
    object qryExerciciosCOD_CONTEUDO: TIntegerField
      FieldName = 'COD_CONTEUDO'
      Origin = 'COD_CONTEUDO'
    end
    object qryExerciciosCONTEUDO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTEUDO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 200
    end
    object qryExerciciosDESCRICAO: TStringField
      DisplayWidth = 200
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 200
    end
    object qryExerciciosTITULO: TStringField
      FieldName = 'TITULO'
      Origin = 'TITULO'
      Size = 200
    end
    object qryExerciciosTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object qryExerciciosIMAGEM_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IMAGEM_1'
      Origin = 'IMAGEM_1'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryExerciciosVIDEO_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'VIDEO_1'
      Origin = 'VIDEO_1'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object dtsExercicios: TDataSource
    DataSet = qryExercicios
    Left = 104
    Top = 256
  end
  object qryQuestoes: TFDQuery
    Connection = dtmMain.FDConnectionMain
    FetchOptions.AssignedValues = [evMode, evCursorKind]
    FetchOptions.Mode = fmAll
    FetchOptions.CursorKind = ckDefault
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_ESCOLA_ID'
    UpdateOptions.KeyFields = 'CODIGO'
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      
        'select AULAS_EXERCICIOS_QUESTOES.CODIGO, AULAS_EXERCICIOS_QUESTO' +
        'ES.COD_AULAS_EXERCICIOS,'
      
        '       AULAS_EXERCICIOS_QUESTOES.DESCRICAO, AULAS_EXERCICIOS_QUE' +
        'STOES.CORRETA,'
      ''
      '       case'
      '         when AULAS_EXERCICIOS_QUESTOES.IMAGEM > 0 then 1'
      '         else 0'
      '       end as IMAGEM_1'
      ''
      'from AULAS_EXERCICIOS_QUESTOES'
      
        'where AULAS_EXERCICIOS_QUESTOES.COD_AULAS_EXERCICIOS = :COD_AULA' +
        'S_EXERCICIO'
      'order by AULAS_EXERCICIOS_QUESTOES.CODIGO ')
    Left = 32
    Top = 312
    ParamData = <
      item
        Name = 'COD_AULAS_EXERCICIO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryQuestoesCODIGO: TFDAutoIncField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      EditFormat = '0000#'
      IdentityInsert = True
    end
    object qryQuestoesCOD_AULAS_EXERCICIOS: TIntegerField
      FieldName = 'COD_AULAS_EXERCICIOS'
      Origin = 'COD_AULAS_EXERCICIOS'
    end
    object qryQuestoesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 200
    end
    object qryQuestoesCORRETA: TSmallintField
      FieldName = 'CORRETA'
      Origin = 'CORRETA'
    end
    object qryQuestoesIMAGEM_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IMAGEM_1'
      Origin = 'IMAGEM_1'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object dtsQuestoes: TDataSource
    DataSet = qryQuestoes
    Left = 104
    Top = 312
  end
  object qryExcluirConteudo: TFDQuery
    Connection = dtmMain.FDConnectionMain
    Transaction = TransactionExcluir
    FetchOptions.AssignedValues = [evMode, evCursorKind]
    FetchOptions.Mode = fmAll
    FetchOptions.CursorKind = ckDefault
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_ESCOLA_ID'
    UpdateOptions.KeyFields = 'CODIGO'
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'DELETE FROM AULAS_CONTEUDOS'
      'WHERE AULAS_CONTEUDOS.CODIGO =:CODIGO')
    Left = 224
    Top = 200
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object TransactionExcluir: TFDTransaction
    Connection = dtmMain.FDConnectionMain
    Left = 224
    Top = 369
  end
  object qryExcluirExercicio: TFDQuery
    Connection = dtmMain.FDConnectionMain
    Transaction = TransactionExcluir
    FetchOptions.AssignedValues = [evMode, evCursorKind]
    FetchOptions.Mode = fmAll
    FetchOptions.CursorKind = ckDefault
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_ESCOLA_ID'
    UpdateOptions.KeyFields = 'CODIGO'
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'DELETE FROM AULAS_EXERCICIOS'
      'WHERE AULAS_EXERCICIOS.CODIGO =:CODIGO')
    Left = 224
    Top = 256
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object qryExcluirQuestoes: TFDQuery
    Connection = dtmMain.FDConnectionMain
    Transaction = TransactionExcluir
    FetchOptions.AssignedValues = [evMode, evCursorKind]
    FetchOptions.Mode = fmAll
    FetchOptions.CursorKind = ckDefault
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_ESCOLA_ID'
    UpdateOptions.KeyFields = 'CODIGO'
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'DELETE FROM AULAS_EXERCICIOS_QUESTOES'
      
        'WHERE AULAS_EXERCICIOS_QUESTOES.COD_AULAS_EXERCICIOS =:COD_AULAS' +
        '_EXERCICIOS')
    Left = 224
    Top = 312
    ParamData = <
      item
        Name = 'COD_AULAS_EXERCICIOS'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object qryExcluirQuestao: TFDQuery
    Connection = dtmMain.FDConnectionMain
    Transaction = TransactionExcluir
    FetchOptions.AssignedValues = [evMode, evCursorKind]
    FetchOptions.Mode = fmAll
    FetchOptions.CursorKind = ckDefault
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_ESCOLA_ID'
    UpdateOptions.KeyFields = 'CODIGO'
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'DELETE FROM AULAS_EXERCICIOS_QUESTOES'
      'WHERE AULAS_EXERCICIOS_QUESTOES.CODIGO =:CODIGO')
    Left = 336
    Top = 200
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end
