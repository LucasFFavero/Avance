object dtmTurmas: TdtmTurmas
  OldCreateOrder = False
  Height = 476
  Width = 810
  object qryBuscaTurmas: TFDQuery
    Connection = dtmMain.FDConnectionMain
    SQL.Strings = (
      'SELECT TURMAS.CODIGO, TURMAS.DESCRICAO'
      'FROM TURMAS'
      'ORDER BY TURMAS.CODIGO')
    Left = 224
    Top = 16
    object qryBuscaTurmasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '0000#'
    end
    object qryBuscaTurmasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 120
    end
  end
  object dtsBuscaTurmas: TDataSource
    DataSet = qryBuscaTurmas
    Left = 320
    Top = 16
  end
  object qryTurmas: TFDQuery
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
      'SELECT TURMAS.CODIGO, TURMAS.DESCRICAO'
      'FROM TURMAS'
      'ORDER BY  TURMAS.CODIGO')
    Left = 32
    Top = 16
    object qryTurmasCODIGO: TFDAutoIncField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      DisplayFormat = '0000#'
      IdentityInsert = True
    end
    object qryTurmasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 120
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
      'INSERT INTO TURMAS'
      '(DESCRICAO)'
      'VALUES (:NEW_DESCRICAO)'
      'RETURNING CODIGO')
    ModifySQL.Strings = (
      'UPDATE TURMAS'
      'SET DESCRICAO = :NEW_DESCRICAO'
      'WHERE CODIGO = :OLD_CODIGO'
      'RETURNING CODIGO')
    DeleteSQL.Strings = (
      'DELETE FROM TURMAS'
      'WHERE CODIGO = :OLD_CODIGO')
    FetchRowSQL.Strings = (
      'SELECT CODIGO, DESCRICAO'
      'FROM TURMAS'
      'WHERE CODIGO = :OLD_CODIGO')
    Left = 32
    Top = 113
  end
  object dtsTurmas: TDataSource
    DataSet = qryTurmas
    OnStateChange = dtsTurmasStateChange
    Left = 104
    Top = 16
  end
end
