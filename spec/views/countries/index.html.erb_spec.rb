require 'spec_helper'

describe "countries/index" do
  before(:each) do
    assign(:countries, [
      stub_model(Country,
        :display_name => "Display Name",
        :full_name => "Full Name",
        :code => "Code",
        :longitude => "9.98",
        :latitude => "9.99"
      ),
      stub_model(Country,
        :display_name => "Display Name",
        :full_name => "Full Name",
        :code => "Code",
        :longitude => "9.98",
        :latitude => "9.99"
      )
    ])
  end

  it "renders a list of countries" do
    render
    assert_select "tr>td", :text => "Display Name".to_s, :count => 2
    assert_select "tr>td", :text => "Full Name".to_s, :count => 2
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => "9.98".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
