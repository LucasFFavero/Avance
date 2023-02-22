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
      'USUARIOS.ALUNO'
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
  end
end
