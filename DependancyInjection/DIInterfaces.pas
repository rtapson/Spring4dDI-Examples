unit DIInterfaces;

interface

type
  IAddress = interface
    ['{3866AFA8-0015-4625-B47F-9D68B254CECF}']
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

    property Street1: string read GetStreet1 write SetStreet1;
    property Street2: string read GetStreet2 write SetStreet2;
    property Street3: string read GetStreet3 write SetStreet3;
    property City: string read GetCity write SetCity;
    property State: string read GetState write SetState;
    property PostalCode: string read GetPostalCode write SetPostalCode;
    property Country: string read GetCountry write SetCountry;
  end;

  ICustomer = interface
    ['{70232A1B-3F9B-4A57-BE48-AD6F8BFB0B3C}']
    function GetName: string;
    procedure SetName(const Value: string);
    function GetAddress: IAddress;
    procedure SetAddress(const Value: IAddress);

    property Address: IAddress read GetAddress write SetAddress;
    property Name: string read GetName write SetName;

    function AddressIsValid: Boolean;
  end;

  IAddressValidator = interface
    ['{F71968B9-0FB0-41BE-A868-F85A1E3F1F1B}']
    function Validate(Address: IAddress): Boolean;
  end;

implementation

end.
