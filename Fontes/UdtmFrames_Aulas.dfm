object dtmFrames_Aulas: TdtmFrames_Aulas
  OldCreateOrder = False
  Height = 420
  Width = 673
  object qryBuscaAulas: TFDQuery
    Connection = dtmMain.FDConnectionMain
    SQL.Strings = (
      'SELECT AULAS.TITULO, AULAS.IMAGEM'
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
  end
end
