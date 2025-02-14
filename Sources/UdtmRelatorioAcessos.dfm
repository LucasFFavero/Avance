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
  object qryAlunos: TFDQuery
    AfterScroll = qryAlunosAfterScroll
    Connection = dtmMain.FDConnectionMain
    SQL.Strings = (
      
        'SELECT USUARIOS.CODIGO, USUARIOS.NOME, USUARIOS.COD_ESCOLA, ESCO' +
        'LA.NOME AS ESCOLA,'
      
        '       USUARIOS.COD_TURMA, TURMAS.DESCRICAO AS TURMA, USUARIOS.E' +
        'MAIL, USUARIOS.LOGIN,'
      
        '       USUARIOS.DATA_NASCIMENTO, USUARIOS.DATA_INGRESSO, USUARIO' +
        'S.ULTIMO_ACESSO'
      'FROM USUARIOS'
      'INNER JOIN ESCOLA ON (USUARIOS.COD_ESCOLA = ESCOLA.CODIGO)'
      'INNER JOIN TURMAS ON (USUARIOS.COD_TURMA = TURMAS.CODIGO)')
    Left = 224
    Top = 16
    object qryAlunosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '0000#'
    end
    object qryAlunosNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 200
    end
    object qryAlunosCOD_ESCOLA: TIntegerField
      FieldName = 'COD_ESCOLA'
      Origin = 'COD_ESCOLA'
    end
    object qryAlunosESCOLA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ESCOLA'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 200
    end
    object qryAlunosCOD_TURMA: TIntegerField
      FieldName = 'COD_TURMA'
      Origin = 'COD_TURMA'
    end
    object qryAlunosTURMA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TURMA'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 120
    end
    object qryAlunosEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 200
    end
    object qryAlunosLOGIN: TStringField
      FieldName = 'LOGIN'
      Origin = 'LOGIN'
      Size = 120
    end
    object qryAlunosDATA_NASCIMENTO: TSQLTimeStampField
      FieldName = 'DATA_NASCIMENTO'
      Origin = 'DATA_NASCIMENTO'
    end
    object qryAlunosDATA_INGRESSO: TSQLTimeStampField
      FieldName = 'DATA_INGRESSO'
      Origin = 'DATA_INGRESSO'
    end
    object qryAlunosULTIMO_ACESSO: TSQLTimeStampField
      FieldName = 'ULTIMO_ACESSO'
      Origin = 'ULTIMO_ACESSO'
    end
  end
  object dtsAlunos: TDataSource
    DataSet = qryAlunos
    Left = 288
    Top = 16
  end
  object qryAcessos: TFDQuery
    Connection = dtmMain.FDConnectionMain
    SQL.Strings = (
      
        'SELECT USUARIOS_ACESSOS.CODIGO, USUARIOS_ACESSOS.ENTRADA, USUARI' +
        'OS_ACESSOS.SAIDA'
      'FROM USUARIOS_ACESSOS'
      'ORDER BY USUARIOS_ACESSOS.CODIGO  ')
    Left = 224
    Top = 112
    object qryAcessosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryAcessosENTRADA: TSQLTimeStampField
      FieldName = 'ENTRADA'
      Origin = 'ENTRADA'
    end
    object qryAcessosSAIDA: TSQLTimeStampField
      FieldName = 'SAIDA'
      Origin = 'SAIDA'
    end
  end
  object dtsAcessos: TDataSource
    DataSet = cldsAcesso
    Left = 288
    Top = 64
  end
  object cldsAcesso: TClientDataSet
    PersistDataPacket.Data = {
      790000009619E0BD010000001800000004000000000003000000790006434F44
      49474F040001000000000007454E545241444101004900000001000557494454
      4802000200320005534149444101004900000001000557494454480200020032
      000554454D504F01004900000001000557494454480200020032000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 224
    Top = 64
    object cldsAcessoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      DisplayFormat = '0000#'
    end
    object cldsAcessoENTRADA: TStringField
      FieldName = 'ENTRADA'
      Size = 50
    end
    object cldsAcessoSAIDA: TStringField
      FieldName = 'SAIDA'
      Size = 50
    end
    object cldsAcessoTEMPO: TStringField
      FieldName = 'TEMPO'
      Size = 50
    end
  end
  object qryUsuarios: TFDQuery
    Connection = dtmMain.FDConnectionMain
    SQL.Strings = (
      
        'SELECT USUARIOS.CODIGO, USUARIOS.NOME, USUARIOS.COD_ESCOLA, USUA' +
        'RIOS.COD_TURMA, USUARIOS.EMAIL,'
      
        '       USUARIOS.LOGIN, USUARIOS.DATA_NASCIMENTO, USUARIOS.DATA_I' +
        'NGRESSO, USUARIOS.ULTIMO_ACESSO'
      'FROM USUARIOS'
      'WHERE USUARIOS.ATIVO = 1'
      'AND USUARIOS.ALUNO = 1')
    Left = 32
    Top = 112
    object qryUsuariosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryUsuariosNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 200
    end
    object qryUsuariosCOD_ESCOLA: TIntegerField
      FieldName = 'COD_ESCOLA'
      Origin = 'COD_ESCOLA'
    end
    object qryUsuariosCOD_TURMA: TIntegerField
      FieldName = 'COD_TURMA'
      Origin = 'COD_TURMA'
    end
    object qryUsuariosEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 200
    end
    object qryUsuariosLOGIN: TStringField
      FieldName = 'LOGIN'
      Origin = 'LOGIN'
      Size = 120
    end
    object qryUsuariosDATA_NASCIMENTO: TSQLTimeStampField
      FieldName = 'DATA_NASCIMENTO'
      Origin = 'DATA_NASCIMENTO'
    end
    object qryUsuariosDATA_INGRESSO: TSQLTimeStampField
      FieldName = 'DATA_INGRESSO'
      Origin = 'DATA_INGRESSO'
    end
    object qryUsuariosULTIMO_ACESSO: TSQLTimeStampField
      FieldName = 'ULTIMO_ACESSO'
      Origin = 'ULTIMO_ACESSO'
    end
  end
  object dtsUsuarios: TDataSource
    DataSet = qryUsuarios
    Left = 104
    Top = 112
  end
end
