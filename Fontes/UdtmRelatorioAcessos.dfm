object dtmRelatorioAcessos: TdtmRelatorioAcessos
  OldCreateOrder = False
  Height = 462
  Width = 812
  object qryEscolas: TFDQuery
    Connection = dtmMain.FDConnectionMain
    SQL.Strings = (
      'SELECT ESCOLA.CODIGO, ESCOLA.NOME, ESCOLA.CIDADE, ESCOLA.ESTADO'
      'FROM ESCOLA'
      'ORDER BY ESCOLA.CODIGO')
    Left = 32
    Top = 16
    object qryEscolasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '0000#'
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
  object dtsEscolas: TDataSource
    DataSet = qryEscolas
    Left = 104
    Top = 16
  end
  object qryTurmas: TFDQuery
    Connection = dtmMain.FDConnectionMain
    SQL.Strings = (
      'SELECT TURMAS.CODIGO, TURMAS.DESCRICAO'
      'FROM TURMAS'
      'ORDER BY TURMAS.CODIGO')
    Left = 32
    Top = 64
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
    Left = 104
    Top = 64
  end
  object qryBuscaUsuarios: TFDQuery
    Connection = dtmMain.FDConnectionMain
    SQL.Strings = (
      
        'SELECT USUARIOS.CODIGO, USUARIOS.NOME, USUARIOS.COD_ESCOLA, ESCO' +
        'LA.NOME AS ESCOLA,'
      
        '       USUARIOS.COD_TURMA, TURMAS.DESCRICAO AS TURMA, USUARIOS.E' +
        'MAIL, USUARIOS.LOGIN,'
      
        '       USUARIOS.DATA_NASCIMENTO, USUARIOS.DATA_INGRESSO, USUARIO' +
        'S.ULTIMO_ACESSO,'
      '       USUARIOS_ACESSOS.ENTRADA, USUARIOS_ACESSOS.SAIDA'
      'FROM USUARIOS'
      
        'INNER JOIN USUARIOS_ACESSOS ON (USUARIOS.CODIGO = USUARIOS_ACESS' +
        'OS.COD_USUARIO)'
      'INNER JOIN ESCOLA ON (USUARIOS.COD_ESCOLA = ESCOLA.CODIGO)'
      'INNER JOIN TURMAS ON (USUARIOS.COD_TURMA = TURMAS.CODIGO)')
    Left = 224
    Top = 64
    object qryBuscaUsuariosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
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
    object qryBuscaUsuariosDATA_NASCIMENTO: TSQLTimeStampField
      FieldName = 'DATA_NASCIMENTO'
      Origin = 'DATA_NASCIMENTO'
    end
    object qryBuscaUsuariosDATA_INGRESSO: TSQLTimeStampField
      FieldName = 'DATA_INGRESSO'
      Origin = 'DATA_INGRESSO'
    end
    object qryBuscaUsuariosULTIMO_ACESSO: TSQLTimeStampField
      FieldName = 'ULTIMO_ACESSO'
      Origin = 'ULTIMO_ACESSO'
    end
    object qryBuscaUsuariosENTRADA: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'ENTRADA'
      Origin = 'ENTRADA'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryBuscaUsuariosSAIDA: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'SAIDA'
      Origin = 'SAIDA'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object dtsBuscaUsuarios: TDataSource
    DataSet = qryBuscaUsuarios
    Left = 320
    Top = 64
  end
end
