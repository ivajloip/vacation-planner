require 'spec_helper'

describe "countries/show" do
  before(:each) do
    @country = assign(:country, stub_model(Country,
      :display_name => "Display Name",
      :full_name => "Full Name",
      :code => "Code",
      :longitude => "9.99",
      :latitude => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Display Name/)
    expect(rendered).to match(/Full Name/)
    expect(rendered).to match(/Code/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
  end
end
