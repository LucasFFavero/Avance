object dtmMain: TdtmMain
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 451
  Width = 812
  object FDConnectionMain: TFDConnection
    Params.Strings = (
      'Database=C:\Desenvolvimento\Projetos\Avance\Dados\Dados.fdb'
      'User_Name=sysdba'
      'Password=masterkey'
      'SQLDialect=1'
      'DriverID=FB')
    LoginPrompt = False
    Transaction = FDTransactionMain
    Left = 40
    Top = 16
  end
  object FDTransactionMain: TFDTransaction
    Connection = FDConnectionMain
    Left = 40
    Top = 64
  end
  object qryUsuarios: TFDQuery
    Connection = FDConnectionMain
    FetchOptions.AssignedValues = [evMode, evCursorKind]
    FetchOptions.Mode = fmAll
    FetchOptions.CursorKind = ckDefault
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_USUARIOS_ID'
    UpdateOptions.KeyFields = 'CODIGO'
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'SELECT USUARIOS.CODIGO, USUARIOS.NOME, USUARIOS.LOGIN,'
      'USUARIOS.ALUNO, USUARIOS.COD_TURMA, USUARIOS.PROFESSOR, '
      'USUARIOS.GESTOR'
      'FROM USUARIOS')
    Left = 136
    Top = 16
    object qryUsuariosCODIGO: TFDAutoIncField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object qryUsuariosNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 200
    end
    object qryUsuariosLOGIN: TStringField
      FieldName = 'LOGIN'
      Origin = 'LOGIN'
      Size = 120
    end
    object qryUsuariosALUNO: TSmallintField
      FieldName = 'ALUNO'
      Origin = 'ALUNO'
    end
    object qryUsuariosCOD_TURMA: TIntegerField
      FieldName = 'COD_TURMA'
      Origin = 'COD_TURMA'
    end
    object qryUsuariosPROFESSOR: TSmallintField
      FieldName = 'PROFESSOR'
      Origin = 'PROFESSOR'
    end
    object qryUsuariosGESTOR: TSmallintField
      FieldName = 'GESTOR'
      Origin = 'GESTOR'
    end
  end
  object qryGravaUltimoAcesso: TFDQuery
    Connection = FDConnectionMain
    Transaction = TransactionUltimoAcesso
    FetchOptions.AssignedValues = [evMode, evCursorKind]
    FetchOptions.Mode = fmAll
    FetchOptions.CursorKind = ckDefault
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_ESCOLA_ID'
    UpdateOptions.KeyFields = 'CODIGO'
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'UPDATE USUARIOS'
      'SET ULTIMO_ACESSO =:DATA'
      'WHERE CODIGO =:COD_USUARIO')
    Left = 232
    Top = 16
    ParamData = <
      item
        Name = 'DATA'
        DataType = ftDateTime
        ParamType = ptInput
      end
      item
        Name = 'COD_USUARIO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object qryGravaAcesso: TFDQuery
    Connection = FDConnectionMain
    Transaction = TransactionAcesso
    FetchOptions.AssignedValues = [evMode, evCursorKind]
    FetchOptions.Mode = fmAll
    FetchOptions.CursorKind = ckDefault
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_ESCOLA_ID'
    UpdateOptions.KeyFields = 'CODIGO'
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'INSERT INTO USUARIOS_ACESSOS (COD_USUARIO, ENTRADA)'
      'VALUES (:COD_USUARIO, :ENTRADA)  ')
    Left = 352
    Top = 16
    ParamData = <
      item
        Name = 'COD_USUARIO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ENTRADA'
        DataType = ftDateTime
        ParamType = ptInput
      end>
  end
  object TransactionAcesso: TFDTransaction
    Connection = FDConnectionMain
    Left = 352
    Top = 115
  end
  object qryAtualizaAcesso: TFDQuery
    Connection = FDConnectionMain
    Transaction = TransactionAcesso
    FetchOptions.AssignedValues = [evMode, evCursorKind]
    FetchOptions.Mode = fmAll
    FetchOptions.CursorKind = ckDefault
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_ESCOLA_ID'
    UpdateOptions.KeyFields = 'CODIGO'
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'UPDATE USUARIOS_ACESSOS'
      'SET SAIDA =:SAIDA'
      'WHERE CODIGO =:CODIGO')
    Left = 352
    Top = 64
    ParamData = <
      item
        Name = 'SAIDA'
        ParamType = ptInput
      end
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  object TransactionUltimoAcesso: TFDTransaction
    Connection = FDConnectionMain
    Left = 232
    Top = 64
  end
  object qryAcesso: TFDQuery
    Connection = FDConnectionMain
    FetchOptions.AssignedValues = [evMode, evCursorKind]
    FetchOptions.Mode = fmAll
    FetchOptions.CursorKind = ckDefault
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_USUARIOS_ID'
    UpdateOptions.KeyFields = 'CODIGO'
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'SELECT USUARIOS_ACESSOS.CODIGO'
      'FROM USUARIOS_ACESSOS'
      'WHERE USUARIOS_ACESSOS.COD_USUARIO =:COD_USUARIO'
      'AND SAIDA IS NULL')
    Left = 136
    Top = 64
    ParamData = <
      item
        Name = 'COD_USUARIO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryAcessoCODIGO: TFDAutoIncField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
  end
end
