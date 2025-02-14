unit Model.Response;

interface

type
  TModelResponse = class
  private
    Fstatus: integer;
    Fmessages: string;
  published
    property status: integer read Fstatus write Fstatus;
    property messages: string read Fmessages write Fmessages;
  end;

implementation

end.


