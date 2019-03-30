unit ChartService;

interface

uses
  XData.Service.Common,
  System.Generics.Collections,
  uReturnTypes,
  Aurelius.Criteria.Base;

type
  [ServiceContract]
  IChartService = interface(IInvokable)
    ['{A05F4C43-9A90-4C20-8B97-7920D2A3F7FB}']
    [HttpGet]
    function GetZipCodes: TList<string>;

    [HttpGet]
    function GetTotalStudentsZip : TObjectList<TCriteriaResult>;

  end;

implementation

initialization
  RegisterServiceType(TypeInfo(IChartService));

end.
