unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Spring,
  Spring.Container,
  DIInterfaces;

type
  TForm1 = class(TForm)
    POSValidateAddress: TButton;
    OEValidateAddress: TButton;
    Button1: TButton;
    procedure POSValidateAddressClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure OEValidateAddressClick(Sender: TObject);
  private
    { Private declarations }
    FPOSContainer: TContainer;
    FOEContainer: TContainer;

    procedure WirePOSContainer;
    procedure WireOEContainer;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  DIObjects, AddressValidators, AddressEditorForm, CustomerEditorForm;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FPOSContainer := TContainer.Create;
  FOEContainer := TContainer.Create;
  WirePOSContainer;
  WireOEContainer;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  FPOSContainer.Free;
  FOEContainer.Free;
end;

procedure TForm1.OEValidateAddressClick(Sender: TObject);
begin
  var CustomerForm := FOEContainer.Resolve<TCustomerEditForm>;
  CustomerForm.Customer.Name := 'OE Customer';
  CustomerForm.Customer.Address.Street1 := '123 The Street';
  if CustomerForm.ShowModal = mrOk then
  begin
    if CustomerForm.Customer.AddressIsValid then
      ShowMessage('Address is valid.')
    else
      ShowMessage('Fix the Address');
  end;

end;

procedure TForm1.POSValidateAddressClick(Sender: TObject);
begin
  var CustomerForm := FPOSContainer.Resolve<TCustomerEditForm>;
  CustomerForm.Customer.Name := 'POS Customer';
  CustomerForm.Customer.Address.Street1 := '123 The Street';
  CustomerForm.Customer.Address.City := 'New Town';
  if CustomerForm.ShowModal = mrOk then
  begin
    if CustomerForm.Customer.AddressIsValid then
      ShowMessage('Address is valid.')
    else
      ShowMessage('Fix the Address');
  end;
end;

procedure TForm1.WireOEContainer;
begin
  FOEContainer.RegisterType<IAddress, TAddress>;
  FOEContainer.RegisterType<ICustomer, TCustomer>;
  FOEContainer.RegisterType<IAddressValidator, TOEAddressValidator>;
  FOEContainer.RegisterType<TAddressEditForm>;
  FOEContainer.RegisterType<TCustomerEditForm>;
  FOEContainer.Build;
end;

procedure TForm1.WirePOSContainer;
begin
  FPOSContainer.RegisterType<IAddress, TAddress>;
  FPOSContainer.RegisterType<ICustomer, TCustomer>;
  FPOSContainer.RegisterType<IAddressValidator, TPOSAddressValidator>;
  FPOSContainer.RegisterType<TAddressEditForm>;
  FPOSContainer.RegisterType<TCustomerEditForm>;
  FPOSContainer.Build;
end;

end.
