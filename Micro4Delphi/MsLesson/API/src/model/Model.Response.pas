unit Model.Response;

interface

type
  TModelResponse = class
  private
    Fstatus: integer;
    Fmessage: string;
  published
    property status: integer read Fstatus write Fstatus;
    property message: string read Fmessage write Fmessage;
  end;

implementation

end.


