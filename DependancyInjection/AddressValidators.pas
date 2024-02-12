unit AddressValidators;

interface

uses
  DIInterfaces;

type
  TPOSAddressValidator = class(TInterfacedObject, IAddressValidator)
  public
    function Validate(Address: IAddress): Boolean;
  end;

  TOEAddressValidator = class(TInterfacedObject, IAddressValidator)
  public
    function Validate(Address: IAddress): Boolean;
  end;

implementation

uses
  SysUtils;

{ TPOSAddressValidator }

function TPOSAddressValidator.Validate(Address: IAddress): Boolean;
begin
  Result := Address.City = 'New Town';
end;

{ TOEAddressValidator }

function TOEAddressValidator.Validate(Address: IAddress): Boolean;
begin
  Result := Address.Street1.StartsWith('123');
end;

end.
