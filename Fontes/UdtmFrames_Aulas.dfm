object dtmFrames_Aulas: TdtmFrames_Aulas
  OldCreateOrder = False
  Height = 420
  Width = 673
  object qryBuscaTurmas: TFDQuery
    Connection = dtmMain.FDConnectionMain
    SQL.Strings = (
      'SELECT AULAS.CODIGO, AULAS.COD_TURMA, AULAS.TITULO, AULAS.IMAGEM'
      'FROM AULAS')
    Left = 32
    Top = 32
    object qryBuscaTurmasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '0000#'
    end
    object qryBuscaTurmasCOD_TURMA: TIntegerField
      FieldName = 'COD_TURMA'
      Origin = 'COD_TURMA'
    end
    object qryBuscaTurmasTITULO: TStringField
      FieldName = 'TITULO'
      Origin = 'TITULO'
      Size = 200
    end
    object qryBuscaTurmasIMAGEM: TBlobField
      FieldName = 'IMAGEM'
      Origin = 'IMAGEM'
    end
  end
end
