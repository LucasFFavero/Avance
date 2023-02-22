object dtmAulasExercicios: TdtmAulasExercicios
  OldCreateOrder = False
  Height = 452
  Width = 811
  object qryConteudos: TFDQuery
    Connection = dtmMain.FDConnectionMain
    SQL.Strings = (
      
        'SELECT AULAS_CONTEUDOS.CODIGO, AULAS_CONTEUDOS.COD_AULA, AULAS_C' +
        'ONTEUDOS.DESCRICAO'
      'FROM AULAS_CONTEUDOS'
      'ORDER BY AULAS_CONTEUDOS.CODIGO')
    Left = 224
    Top = 16
    object qryConteudosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '0000#'
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
  end
  object dtsConteudos: TDataSource
    DataSet = qryConteudos
    Left = 320
    Top = 16
  end
  object qryExercicios: TFDQuery
    AfterScroll = qryExerciciosAfterScroll
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
      
        'SELECT AULAS_EXERCICIOS.CODIGO, AULAS_EXERCICIOS.COD_AULA, AULAS' +
        '_EXERCICIOS.COD_CONTEUDO,'
      
        '       AULAS_EXERCICIOS.DESCRICAO, AULAS_EXERCICIOS.TIPO, AULAS_' +
        'EXERCICIOS.IMAGEM,'
      '       AULAS_EXERCICIOS.VIDEO'
      'FROM AULAS_EXERCICIOS'
      'WHERE AULAS_EXERCICIOS.CODIGO = :CODIGO'
      'ORDER BY AULAS_EXERCICIOS.CODIGO  ')
    Left = 32
    Top = 16
    ParamData = <
      item
        Name = 'CODIGO'
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
    object qryExerciciosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 120
    end
    object qryExerciciosTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object qryExerciciosIMAGEM: TBlobField
      FieldName = 'IMAGEM'
      Origin = 'IMAGEM'
    end
    object qryExerciciosVIDEO: TBlobField
      FieldName = 'VIDEO'
      Origin = 'VIDEO'
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
      'INSERT INTO AULAS_EXERCICIOS'
      '(COD_AULA, COD_CONTEUDO, DESCRICAO, TIPO, '
      '  IMAGEM, VIDEO)'
      
        'VALUES (:NEW_COD_AULA, :NEW_COD_CONTEUDO, :NEW_DESCRICAO, :NEW_T' +
        'IPO, '
      '  :NEW_IMAGEM, :NEW_VIDEO)'
      'RETURNING CODIGO')
    ModifySQL.Strings = (
      'UPDATE AULAS_EXERCICIOS'
      'SET COD_AULA = :NEW_COD_AULA, COD_CONTEUDO = :NEW_COD_CONTEUDO, '
      
        '  DESCRICAO = :NEW_DESCRICAO, TIPO = :NEW_TIPO, IMAGEM = :NEW_IM' +
        'AGEM, '
      '  VIDEO = :NEW_VIDEO'
      'WHERE CODIGO = :OLD_CODIGO'
      'RETURNING CODIGO')
    DeleteSQL.Strings = (
      'DELETE FROM AULAS_EXERCICIOS'
      'WHERE CODIGO = :OLD_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT CODIGO, COD_AULA, COD_CONTEUDO, DESCRICAO, TIPO, IMAGEM, ' +
        'VIDEO'
      'FROM AULAS_EXERCICIOS'
      'WHERE CODIGO = :OLD_CODIGO')
    Left = 32
    Top = 113
  end
  object dtsExercicios: TDataSource
    DataSet = qryExercicios
    OnStateChange = dtsExerciciosStateChange
    Left = 104
    Top = 16
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
      
        'SELECT AULAS_EXERCICIOS_QUESTOES.CODIGO, AULAS_EXERCICIOS_QUESTO' +
        'ES.COD_AULAS_EXERCICIOS,'
      
        '       AULAS_EXERCICIOS_QUESTOES.DESCRICAO, AULAS_EXERCICIOS_QUE' +
        'STOES.IMAGEM,'
      '       AULAS_EXERCICIOS_QUESTOES.CORRETA'
      'FROM AULAS_EXERCICIOS_QUESTOES'
      
        'WHERE AULAS_EXERCICIOS_QUESTOES.COD_AULAS_EXERCICIOS = :COD_AULA' +
        'S_EXERCICIO'
      'ORDER BY AULAS_EXERCICIOS_QUESTOES.CODIGO')
    Left = 224
    Top = 65
    ParamData = <
      item
        Name = 'COD_AULAS_EXERCICIO'
        ParamType = ptInput
      end>
    object qryQuestoesCODIGO: TFDAutoIncField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      DisplayFormat = '0000#'
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
    object qryQuestoesIMAGEM: TBlobField
      Alignment = taCenter
      FieldName = 'IMAGEM'
      Origin = 'IMAGEM'
    end
    object qryQuestoesCORRETA: TSmallintField
      Alignment = taCenter
      FieldName = 'CORRETA'
      Origin = 'CORRETA'
    end
  end
  object dtsQuestoes: TDataSource
    DataSet = qryQuestoes
    Left = 320
    Top = 65
  end
  object TransactionExcluir: TFDTransaction
    Connection = dtmMain.FDConnectionMain
    Left = 224
    Top = 313
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
      'WHERE AULAS_EXERCICIOS_QUESTOES.CODIGO =:CODIGO')
    Left = 224
    Top = 256
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end
