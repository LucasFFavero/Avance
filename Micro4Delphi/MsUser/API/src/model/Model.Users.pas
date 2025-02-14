unit Model.Users;

interface

type
  TModelUsers = class
  private
    Fid: integer;
    Fname: string;
  published
    property id: integer read Fid write Fid;
    property name: string read Fname write Fname;
  end;

implementation

end.


