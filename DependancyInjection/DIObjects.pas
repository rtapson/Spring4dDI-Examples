unit DIObjects;

interface

uses
  DIInterfaces, Spring.Container.Common;

type
  TCustomer = class(TInterfacedObject, ICustomer)
  private
    [Inject]
    FAddress: IAddress;

    [Inject]
    FAddressValidator: IAddressValidator;

    FName: string;

    function GetAddress: IAddress;
    procedure SetAddress(const Value: IAddress);
    function GetName: string;
    procedure SetName(const Value: string);
  public
    function AddressIsValid: Boolean;

    property Name: string read GetName write SetName;
    property Address: IAddress read GetAddress write SetAddress;
  end;

  TAddress = class(TInterfacedObject, IAddress)
  private
    FStreet1: string;
    FStreet2: string;
    FStreet3: string;
    FCity: string;
    FState: string;
    FPostalCode: string;
    FCountry: string;

    function GetStreet1: string;
    procedure SetStreet1(const Value: string);
    function GetCity: string;
    function GetStreet2: string;
    function GetStreet3: string;
    procedure SetCity(const Value: string);
    procedure SetStreet2(const Value: string);
    procedure SetStreet3(const Value: string);
    function GetState: string;
    procedure SetState(const Value: string);
    function GetPostalCode: string;
    procedure SetPostalCode(const Value: string);
    function GetCountry: string;
    procedure SetCountry(const Value: string);
  public
    property Street1: string read GetStreet1 write SetStreet1;
    property Street2: string read GetStreet2 write SetStreet2;
    property Street3: string read GetStreet3 write SetStreet3;
    property City: string read GetCity write SetCity;
    property State: string read GetState write SetState;
    property PostalCode: string read GetPostalCode write SetPostalCode;
    property Country: string read GetCountry write SetCountry;
  end;

implementation

{ TAddress }

function TAddress.GetCity: string;
begin
  Result := FCity;
end;

function TAddress.GetCountry: string;
begin
  Result := FCountry;
end;

function TAddress.GetPostalCode: string;
begin
  Result := FPostalCode;
end;

function TAddress.GetState: string;
begin
  Result := FState;
end;

function TAddress.GetStreet1: string;
begin
  Result := FStreet1;
end;

function TAddress.GetStreet2: string;
begin
  Result := FStreet2;
end;

function TAddress.GetStreet3: string;
begin
  Result := FStreet3;
end;

procedure TAddress.SetCity(const Value: string);
begin
  FCity := Value;
end;

procedure TAddress.SetCountry(const Value: string);
begin
  FCountry := Value;
end;

procedure TAddress.SetPostalCode(const Value: string);
begin
  FPostalCode := Value;
end;

procedure TAddress.SetState(const Value: string);
begin
  FState := Value;
end;

procedure TAddress.SetStreet1(const Value: string);
begin
  FStreet1 := Value;
end;

procedure TAddress.SetStreet2(const Value: string);
begin
  FStreet2 := Value;
end;

procedure TAddress.SetStreet3(const Value: string);
begin
  FStreet3 := Value;
end;

{ TCustomer }

function TCustomer.AddressIsValid: Boolean;
begin
  Result := FAddressValidator.Validate(Address);
end;

function TCustomer.GetAddress: IAddress;
begin
  Result := FAddress;
end;

function TCustomer.GetName: string;
begin
  Result := FName;
end;

procedure TCustomer.SetAddress(const Value: IAddress);
begin
  FAddress := Value;
end;

procedure TCustomer.SetName(const Value: string);
begin
  FName := VAlue;
end;

end.
