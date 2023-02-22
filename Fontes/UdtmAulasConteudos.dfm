object dtmAulasConteudos: TdtmAulasConteudos
  OldCreateOrder = False
  Height = 454
  Width = 816
  object qryConteudos: TFDQuery
    AfterScroll = qryConteudosAfterScroll
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
      
        'SELECT AULAS_CONTEUDOS.CODIGO, AULAS_CONTEUDOS.COD_AULA, AULAS_C' +
        'ONTEUDOS.DESCRICAO,'
      
        '       AULAS_CONTEUDOS.TIPO, AULAS_CONTEUDOS.IMAGEM, AULAS_CONTE' +
        'UDOS.VIDEO,'
      
        '       AULAS_CONTEUDOS.AUDIO, AULAS_CONTEUDOS.RESUMO, AULAS_CONT' +
        'EUDOS.RESUMO_IMAGEM'
      'FROM AULAS_CONTEUDOS  '
      'WHERE AULAS_CONTEUDOS.CODIGO = :CODIGO')
    Left = 32
    Top = 16
    ParamData = <
      item
        Name = 'CODIGO'
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
    object qryConteudosTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object qryConteudosIMAGEM: TBlobField
      FieldName = 'IMAGEM'
      Origin = 'IMAGEM'
    end
    object qryConteudosVIDEO: TBlobField
      FieldName = 'VIDEO'
      Origin = 'VIDEO'
    end
    object qryConteudosAUDIO: TBlobField
      FieldName = 'AUDIO'
      Origin = 'AUDIO'
    end
    object qryConteudosRESUMO: TStringField
      FieldName = 'RESUMO'
      Origin = 'RESUMO'
      Size = 2000
    end
    object qryConteudosRESUMO_IMAGEM: TBlobField
      FieldName = 'RESUMO_IMAGEM'
      Origin = 'RESUMO_IMAGEM'
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
      'INSERT INTO AULAS_CONTEUDOS'
      '(COD_AULA, DESCRICAO, TIPO, IMAGEM, VIDEO, '
      '  AUDIO, RESUMO, RESUMO_IMAGEM)'
      
        'VALUES (:NEW_COD_AULA, :NEW_DESCRICAO, :NEW_TIPO, :NEW_IMAGEM, :' +
        'NEW_VIDEO, '
      '  :NEW_AUDIO, :NEW_RESUMO, :NEW_RESUMO_IMAGEM)'
      'RETURNING CODIGO')
    ModifySQL.Strings = (
      'UPDATE AULAS_CONTEUDOS'
      
        'SET COD_AULA = :NEW_COD_AULA, DESCRICAO = :NEW_DESCRICAO, TIPO =' +
        ' :NEW_TIPO, '
      '  IMAGEM = :NEW_IMAGEM, VIDEO = :NEW_VIDEO, AUDIO = :NEW_AUDIO, '
      '  RESUMO = :NEW_RESUMO, RESUMO_IMAGEM = :NEW_RESUMO_IMAGEM'
      'WHERE CODIGO = :OLD_CODIGO'
      'RETURNING CODIGO')
    DeleteSQL.Strings = (
      'DELETE FROM AULAS_CONTEUDOS'
      'WHERE CODIGO = :OLD_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT CODIGO, COD_AULA, DESCRICAO, TIPO, IMAGEM, VIDEO, AUDIO, ' +
        'RESUMO, '
      '  RESUMO_IMAGEM'
      'FROM AULAS_CONTEUDOS'
      'WHERE CODIGO = :OLD_CODIGO')
    Left = 32
    Top = 113
  end
  object dtsConteudos: TDataSource
    DataSet = qryConteudos
    OnStateChange = dtsConteudosStateChange
    Left = 104
    Top = 16
  end
end
