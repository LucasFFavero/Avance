object dtmRelatorios: TdtmRelatorios
  OldCreateOrder = False
  Height = 462
  Width = 810
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
    Left = 296
    Top = 16
  end
  object qryExercicios: TFDQuery
    Connection = dtmMain.FDConnectionMain
    SQL.Strings = (
      
        'SELECT AULAS.TITULO AS AULA, AULAS_CONTEUDOS.DESCRICAO AS CONTEU' +
        'DO,'
      
        '       AULAS_EXERCICIOS.DESCRICAO AS EXERCICIO, USUARIOS_EXERCIC' +
        'IOS.ACERTOU'
      'FROM USUARIOS_EXERCICIOS'
      
        'INNER JOIN AULAS_EXERCICIOS ON (USUARIOS_EXERCICIOS.COD_AULAS_EX' +
        'ERCICIOS = AULAS_EXERCICIOS.CODIGO)'
      
        'INNER JOIN AULAS_CONTEUDOS ON (AULAS_EXERCICIOS.COD_CONTEUDO = A' +
        'ULAS_CONTEUDOS.CODIGO)'
      'INNER JOIN AULAS ON (AULAS_CONTEUDOS.COD_AULA = AULAS.CODIGO)'
      'WHERE USUARIOS_EXERCICIOS.COD_USUARIOS = :COD_USUARIO')
    Left = 224
    Top = 64
    ParamData = <
      item
        Name = 'COD_USUARIO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryExerciciosAULA: TStringField
      FieldName = 'AULA'
      Origin = 'AULA'
      Size = 200
    end
    object qryExerciciosCONTEUDO: TStringField
      FieldName = 'CONTEUDO'
      Origin = 'CONTEUDO'
      Size = 200
    end
    object qryExerciciosEXERCICIO: TStringField
      FieldName = 'EXERCICIO'
      Origin = 'EXERCICIO'
      Size = 200
    end
    object qryExerciciosACERTOU: TSmallintField
      FieldName = 'ACERTOU'
      Origin = 'ACERTOU'
    end
  end
  object dtsExercicios: TDataSource
    DataSet = qryExercicios
    Left = 296
    Top = 64
  end
end
