object dtmRelatorios: TdtmRelatorios
  OldCreateOrder = False
  Height = 462
  Width = 810
  object qryBuscaAulas: TFDQuery
    Connection = dtmMain.FDConnectionMain
    SQL.Strings = (
      
        'SELECT AULAS.CODIGO, AULAS.COD_TURMA, TURMAS.DESCRICAO, AULAS.TI' +
        'TULO, AULAS.IMAGEM'
      'FROM AULAS'
      'INNER JOIN TURMAS ON (AULAS.COD_TURMA = TURMAS.CODIGO)   ')
    Left = 48
    Top = 104
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
  end
  object dtsBuscaAulas: TDataSource
    DataSet = qryBuscaAulas
    Left = 144
    Top = 104
  end
  object qryBuscaEscolas: TFDQuery
    Connection = dtmMain.FDConnectionMain
    SQL.Strings = (
      'SELECT ESCOLA.CODIGO, ESCOLA.NOME, ESCOLA.CIDADE, ESCOLA.ESTADO'
      'FROM ESCOLA'
      'ORDER BY ESCOLA.CODIGO')
    Left = 48
    Top = 8
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
    Left = 144
    Top = 8
  end
  object qryBuscaUsuarios: TFDQuery
    Connection = dtmMain.FDConnectionMain
    SQL.Strings = (
      
        'SELECT USUARIOS.CODIGO, USUARIOS.NOME, USUARIOS.COD_ESCOLA, ESCO' +
        'LA.NOME AS ESCOLA,'
      
        '       USUARIOS.COD_TURMA, TURMAS.DESCRICAO AS TURMA, USUARIOS.E' +
        'MAIL, USUARIOS.LOGIN,'
      
        '       USUARIOS.SENHA, USUARIOS.DATA_NASCIMENTO, USUARIOS.ATIVO,' +
        ' USUARIOS.GESTOR,'
      
        '       USUARIOS.PROFESSOR, USUARIOS.ALUNO, USUARIOS.DATA_INGRESS' +
        'O, USUARIOS.ULTIMO_ACESSO'
      'FROM USUARIOS'
      'INNER JOIN ESCOLA ON (USUARIOS.COD_ESCOLA = ESCOLA.CODIGO)'
      'INNER JOIN TURMAS ON (USUARIOS.COD_TURMA = TURMAS.CODIGO)  '
      'ORDER BY USUARIOS.CODIGO')
    Left = 48
    Top = 56
    object qryBuscaUsuariosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '0000#'
    end
    object qryBuscaUsuariosNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 200
    end
    object qryBuscaUsuariosCOD_ESCOLA: TIntegerField
      FieldName = 'COD_ESCOLA'
      Origin = 'COD_ESCOLA'
    end
    object qryBuscaUsuariosESCOLA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ESCOLA'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 200
    end
    object qryBuscaUsuariosCOD_TURMA: TIntegerField
      FieldName = 'COD_TURMA'
      Origin = 'COD_TURMA'
    end
    object qryBuscaUsuariosTURMA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TURMA'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 120
    end
    object qryBuscaUsuariosEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 200
    end
    object qryBuscaUsuariosLOGIN: TStringField
      FieldName = 'LOGIN'
      Origin = 'LOGIN'
      Size = 120
    end
    object qryBuscaUsuariosSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Size = 120
    end
    object qryBuscaUsuariosDATA_NASCIMENTO: TSQLTimeStampField
      FieldName = 'DATA_NASCIMENTO'
      Origin = 'DATA_NASCIMENTO'
    end
    object qryBuscaUsuariosATIVO: TSmallintField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
    end
    object qryBuscaUsuariosGESTOR: TSmallintField
      FieldName = 'GESTOR'
      Origin = 'GESTOR'
    end
    object qryBuscaUsuariosPROFESSOR: TSmallintField
      FieldName = 'PROFESSOR'
      Origin = 'PROFESSOR'
    end
    object qryBuscaUsuariosALUNO: TSmallintField
      FieldName = 'ALUNO'
      Origin = 'ALUNO'
    end
    object qryBuscaUsuariosDATA_INGRESSO: TSQLTimeStampField
      FieldName = 'DATA_INGRESSO'
      Origin = 'DATA_INGRESSO'
    end
    object qryBuscaUsuariosULTIMO_ACESSO: TSQLTimeStampField
      FieldName = 'ULTIMO_ACESSO'
      Origin = 'ULTIMO_ACESSO'
    end
  end
  object dtsBuscaUsuarios: TDataSource
    DataSet = qryBuscaUsuarios
    Left = 144
    Top = 56
  end
end
