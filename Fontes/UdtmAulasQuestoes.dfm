object dtmAulasQuestoes: TdtmAulasQuestoes
  OldCreateOrder = False
  Height = 539
  Width = 812
  object qryQuestoes: TFDQuery
    AfterScroll = qryQuestoesAfterScroll
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
      
        'SELECT AULAS_EXERCICIOS_QUESTOES.CODIGO, AULAS_EXERCICIOS_QUESTO' +
        'ES.COD_AULAS_EXERCICIOS,'
      
        '       AULAS_EXERCICIOS_QUESTOES.DESCRICAO, AULAS_EXERCICIOS_QUE' +
        'STOES.IMAGEM,'
      '       AULAS_EXERCICIOS_QUESTOES.CORRETA'
      'FROM AULAS_EXERCICIOS_QUESTOES  '
      'WHERE AULAS_EXERCICIOS_QUESTOES.CODIGO = :CODIGO'
      'ORDER BY AULAS_EXERCICIOS_QUESTOES.CODIGO')
    Left = 32
    Top = 16
    ParamData = <
      item
        Name = 'CODIGO'
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
      FieldName = 'IMAGEM'
      Origin = 'IMAGEM'
    end
    object qryQuestoesCORRETA: TSmallintField
      FieldName = 'CORRETA'
      Origin = 'CORRETA'
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
      'INSERT INTO AULAS_EXERCICIOS_QUESTOES'
      '(COD_AULAS_EXERCICIOS, DESCRICAO, IMAGEM, CORRETA)'
      
        'VALUES (:NEW_COD_AULAS_EXERCICIOS, :NEW_DESCRICAO, :NEW_IMAGEM, ' +
        ':NEW_CORRETA)'
      'RETURNING CODIGO')
    ModifySQL.Strings = (
      'UPDATE AULAS_EXERCICIOS_QUESTOES'
      
        'SET COD_AULAS_EXERCICIOS = :NEW_COD_AULAS_EXERCICIOS, DESCRICAO ' +
        '= :NEW_DESCRICAO, '
      '  IMAGEM = :NEW_IMAGEM, CORRETA = :NEW_CORRETA'
      'WHERE CODIGO = :OLD_CODIGO'
      'RETURNING CODIGO')
    DeleteSQL.Strings = (
      'DELETE FROM AULAS_EXERCICIOS_QUESTOES'
      'WHERE CODIGO = :OLD_CODIGO')
    FetchRowSQL.Strings = (
      'SELECT CODIGO, COD_AULAS_EXERCICIOS, DESCRICAO, IMAGEM, CORRETA'
      'FROM AULAS_EXERCICIOS_QUESTOES'
      'WHERE CODIGO = :OLD_CODIGO')
    Left = 32
    Top = 113
  end
  object dtsQuestoes: TDataSource
    DataSet = qryQuestoes
    Left = 104
    Top = 16
  end
end
