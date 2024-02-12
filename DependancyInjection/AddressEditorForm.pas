unit AddressEditorForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  DIInterfaces;

type
  TAddressEditForm = class(TForm)
    Street1Edit: TLabeledEdit;
    Street2Edit: TLabeledEdit;
    Street3Edit: TLabeledEdit;
    CityEdit: TLabeledEdit;
    StateEdit: TLabeledEdit;
    PostalCodeEdit: TLabeledEdit;
    CountryEdit: TLabeledEdit;
    Button1: TButton;
    Button2: TButton;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FAddress: IAddress;
  public
    { Public declarations }
    property Address: IAddress read FAddress write FAddress;
  end;

implementation

{$R *.dfm}

procedure TAddressEditForm.FormShow(Sender: TObject);
begin
  Street1Edit.Text := Address.Street1;
  Street2Edit.Text := Address.Street2;
  Street3Edit.Text := Address.Street3;
  CityEdit.Text := Address.City;
  StateEdit.Text := Address.State;
  PostalCodeEdit.Text := Address.PostalCode;
  CountryEdit.Text := Address.Country;
end;

end.
