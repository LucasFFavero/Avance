object dtmUsuarios: TdtmUsuarios
  OldCreateOrder = False
  Height = 487
  Width = 810
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
    Left = 224
    Top = 16
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
    Left = 320
    Top = 16
  end
  object qryEscolas: TFDQuery
    Connection = dtmMain.FDConnectionMain
    SQL.Strings = (
      'SELECT ESCOLA.CODIGO, ESCOLA.NOME, ESCOLA.CIDADE, ESCOLA.ESTADO'
      'FROM ESCOLA  ')
    Left = 224
    Top = 65
    object qryEscolasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
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
    Left = 320
    Top = 65
  end
  object qryTurmas: TFDQuery
    Connection = dtmMain.FDConnectionMain
    SQL.Strings = (
      'SELECT TURMAS.CODIGO, TURMAS.DESCRICAO'
      'FROM TURMAS  ')
    Left = 224
    Top = 113
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
    Left = 320
    Top = 113
  end
  object qryUsuarios: TFDQuery
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
      
        'SELECT USUARIOS.CODIGO, USUARIOS.COD_TURMA, USUARIOS.COD_ESCOLA,' +
        ' USUARIOS.NOME, USUARIOS.EMAIL,'
      
        '       USUARIOS.LOGIN, USUARIOS.SENHA, USUARIOS.DATA_NASCIMENTO,' +
        ' USUARIOS.ATIVO, USUARIOS.GESTOR,'
      
        '       USUARIOS.PROFESSOR, USUARIOS.ALUNO, USUARIOS.DATA_INGRESS' +
        'O, USUARIOS.ULTIMO_ACESSO'
      'FROM USUARIOS'
      'ORDER BY USUARIOS.CODIGO')
    Left = 32
    Top = 16
    object FDAutoIncField1: TFDAutoIncField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      DisplayFormat = '0000#'
      IdentityInsert = True
    end
    object qryUsuariosCOD_TURMA: TIntegerField
      FieldName = 'COD_TURMA'
      Origin = 'COD_TURMA'
    end
    object qryUsuariosCOD_ESCOLA: TIntegerField
      FieldName = 'COD_ESCOLA'
      Origin = 'COD_ESCOLA'
    end
    object qryUsuariosNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 200
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
    object qryUsuariosSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Size = 120
    end
    object qryUsuariosDATA_NASCIMENTO: TSQLTimeStampField
      FieldName = 'DATA_NASCIMENTO'
      Origin = 'DATA_NASCIMENTO'
    end
    object qryUsuariosATIVO: TSmallintField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
    end
    object qryUsuariosGESTOR: TSmallintField
      FieldName = 'GESTOR'
      Origin = 'GESTOR'
    end
    object qryUsuariosPROFESSOR: TSmallintField
      FieldName = 'PROFESSOR'
      Origin = 'PROFESSOR'
    end
    object qryUsuariosALUNO: TSmallintField
      FieldName = 'ALUNO'
      Origin = 'ALUNO'
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
  object Transaction: TFDTransaction
    Connection = dtmMain.FDConnectionMain
    Left = 32
    Top = 65
  end
  object UpdateSQL: TFDUpdateSQL
    Connection = dtmMain.FDConnectionMain
    InsertSQL.Strings = (
      'INSERT INTO USUARIOS'
      '(COD_ESCOLA, COD_TURMA, NOME, EMAIL, LOGIN, '
      '  SENHA, DATA_NASCIMENTO, ATIVO, GESTOR, '
      '  PROFESSOR, ALUNO, DATA_INGRESSO, ULTIMO_ACESSO)'
      
        'VALUES (:NEW_COD_ESCOLA, :NEW_COD_TURMA, :NEW_NOME, :NEW_EMAIL, ' +
        ':NEW_LOGIN, '
      '  :NEW_SENHA, :NEW_DATA_NASCIMENTO, :NEW_ATIVO, :NEW_GESTOR, '
      
        '  :NEW_PROFESSOR, :NEW_ALUNO, :NEW_DATA_INGRESSO, :NEW_ULTIMO_AC' +
        'ESSO)'
      'RETURNING CODIGO')
    ModifySQL.Strings = (
      'UPDATE USUARIOS'
      
        'SET COD_ESCOLA = :NEW_COD_ESCOLA, COD_TURMA = :NEW_COD_TURMA, NO' +
        'ME = :NEW_NOME, '
      '  EMAIL = :NEW_EMAIL, LOGIN = :NEW_LOGIN, SENHA = :NEW_SENHA, '
      '  DATA_NASCIMENTO = :NEW_DATA_NASCIMENTO, ATIVO = :NEW_ATIVO, '
      
        '  GESTOR = :NEW_GESTOR, PROFESSOR = :NEW_PROFESSOR, ALUNO = :NEW' +
        '_ALUNO, '
      
        '  DATA_INGRESSO = :NEW_DATA_INGRESSO, ULTIMO_ACESSO = :NEW_ULTIM' +
        'O_ACESSO'
      'WHERE CODIGO = :OLD_CODIGO'
      'RETURNING CODIGO')
    DeleteSQL.Strings = (
      'DELETE FROM USUARIOS'
      'WHERE CODIGO = :OLD_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT CODIGO, COD_ESCOLA, COD_TURMA, NOME, EMAIL, LOGIN, SENHA,' +
        ' DATA_NASCIMENTO, '
      '  ATIVO, GESTOR, PROFESSOR, ALUNO, DATA_INGRESSO, ULTIMO_ACESSO'
      'FROM USUARIOS'
      'WHERE CODIGO = :OLD_CODIGO')
    Left = 32
    Top = 113
  end
  object dtsUsuarios: TDataSource
    DataSet = qryUsuarios
    OnStateChange = dtsUsuariosStateChange
    Left = 104
    Top = 16
  end
  object FDMTUsuarios: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 32
    Top = 184
  end
end
