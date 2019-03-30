unit ChartServiceImpl;

interface

uses
  XData.Server.Module,
  XData.Service.Common,
  ChartService,
  System.Generics.Collections,
  uReturnTypes,
  Aurelius.Criteria.Base;

type
  [ServiceImplementation]
  TChartService = class(TInterfacedObject, IChartService)
     function GetZipCodes: TList<string>;
     function GetTotalStudentsZip : TObjectList<TCriteriaResult>;
  end;


implementation
uses uSchool, Variants,
  Aurelius.Criteria.Linq,
  Aurelius.Criteria.Projections;

{ TChartService }

function TChartService.GetTotalStudentsZip: TObjectList<TCriteriaResult>;
var
  Results: TObjectList<TCriteriaResult>;
  //i: Integer;

begin

  // get results from database
  Result := TXDataOperationContext.Current.GetManager.
    Find<TSchools>.Select(
      TProjections.ProjectionList
        .Add( TProjections.Group('Zip').As_('Zip')  )
        .Add( TProjections.Sum('Students').As_('Total') )
        .Add( TProjections.Count('Zip').As_('NoSchools' ))
        .Add( ( Linq['Students'].Sum / Linq['Zip'].Count ).As_('Ratio') )
      )
    .OrderBy('Zip')
    .ListValues;

 (*
  Result := TList<TTotalStudentsZip>.Create;

  for i := 0 to Results.Count - 1 do
  begin
    var LItem: TTotalStudentsZip := TTotalStudentsZip.Create;
    LItem.Zip := Results[i].Values[0];
    LItem.Total := Results[i].Values[1];
    LItem.NoSchools := Results[i].Values[2];
    Result.Add(LItem);
  end;
  *)
end;

function TChartService.GetZipCodes: TList<string>;
var
  Results: TObjectList<TCriteriaResult>;
  i: Integer;

begin
  // get results from database
  Results := TXDataOperationContext.Current.GetManager.
    Find<TSchools>.Select(TProjections.Group('Zip')).
    ListValues;

  // add results to list of strings

  Result := TList<string>.Create;
  for i := 0 to Results.Count -1 do
  begin
    var LBuffer : String := VarToStr( Results[i].Values[0] );
    if Length( LBuffer ) = 5 then
    begin
      Result.Add( LBuffer );
    end;
  end;
end;

initialization
  RegisterServiceType(TChartService);

end.
