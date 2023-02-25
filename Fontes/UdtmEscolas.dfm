object dtmEscolas: TdtmEscolas
  OldCreateOrder = False
  Height = 483
  Width = 815
  object qryEscolas: TFDQuery
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
      'SELECT ESCOLA.CODIGO, ESCOLA.NOME, ESCOLA.CIDADE, ESCOLA.ESTADO'
      'FROM ESCOLA'
      'ORDER BY ESCOLA.CODIGO')
    Left = 32
    Top = 16
    object qryEscolasCODIGO: TFDAutoIncField
      AutoGenerateValue = arNone
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      DisplayFormat = '0000#'
      IdentityInsert = True
    end
    object qryEscolasNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 200
    end
    object qryEscolasCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 200
    end
    object qryEscolasESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Size = 2
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
      'INSERT INTO ESCOLA'
      '(NOME, CIDADE, ESTADO)'
      'VALUES (:NEW_NOME, :NEW_CIDADE, :NEW_ESTADO)'
      'RETURNING CODIGO')
    ModifySQL.Strings = (
      'UPDATE ESCOLA'
      'SET NOME = :NEW_NOME, CIDADE = :NEW_CIDADE, ESTADO = :NEW_ESTADO'
      'WHERE CODIGO = :OLD_CODIGO'
      'RETURNING CODIGO')
    DeleteSQL.Strings = (
      'DELETE FROM ESCOLA'
      'WHERE CODIGO = :OLD_CODIGO')
    FetchRowSQL.Strings = (
      'SELECT CODIGO, NOME, CIDADE, ESTADO'
      'FROM ESCOLA'
      'WHERE CODIGO = :OLD_CODIGO')
    Left = 32
    Top = 113
  end
  object dtsEscolas: TDataSource
    DataSet = qryEscolas
    OnStateChange = dtsEscolasStateChange
    Left = 104
    Top = 16
  end
  object qryBuscaEscolas: TFDQuery
    Connection = dtmMain.FDConnectionMain
    Transaction = Transaction
    SQL.Strings = (
      'SELECT ESCOLA.CODIGO, ESCOLA.NOME, ESCOLA.CIDADE, ESCOLA.ESTADO'
      'FROM ESCOLA'
      'ORDER BY ESCOLA.CODIGO')
    Left = 224
    Top = 16
    object qryBuscaEscolasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '0000#'
    end
    object qryBuscaEscolasNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 200
    end
    object qryBuscaEscolasCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 200
    end
    object qryBuscaEscolasESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Size = 2
    end
  end
  object dtsBuscaEscolas: TDataSource
    DataSet = qryBuscaEscolas
    Left = 320
    Top = 16
  end
end
