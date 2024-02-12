unit CustomerEditorForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  DIInterfaces, Spring.Container.Common, AddressEditorForm, Spring;

type
  TCustomerEditForm = class(TForm)
    Button1: TButton;
    Button2: TButton;
    NameEdit: TLabeledEdit;
    Button3: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
    [Inject]
    FCustomer: ICustomer;

    [Inject]
    FAddressEditForm: Lazy<TAddressEditForm>;
  public
    { Public declarations }
    property Customer: ICustomer read FCustomer write FCustomer;
  end;


implementation

{$R *.dfm}

procedure TCustomerEditForm.Button3Click(Sender: TObject);
begin
  FAddressEditForm.Value.Address := FCustomer.Address;
  if FAddressEditForm.Value.ShowModal = mrOk then
  begin
    Customer.Address.Street1 := FAddressEditForm.Value.Street1Edit.Text;
    Customer.Address.Street2 := FAddressEditForm.Value.Street2Edit.Text;
    Customer.Address.Street3 := FAddressEditForm.Value.Street3Edit.Text;
    Customer.Address.City := FAddressEditForm.Value.CityEdit.Text;
    Customer.Address.State := FAddressEditForm.Value.StateEdit.Text;
    Customer.Address.PostalCode := FAddressEditForm.Value.PostalCodeEdit.Text;
    Customer.Address.Country := FAddressEditForm.Value.CountryEdit.Text;
  end;
end;

procedure TCustomerEditForm.FormShow(Sender: TObject);
begin
  NameEdit.Text := FCustomer.Name;
end;

end.
