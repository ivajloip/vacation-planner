require 'spec_helper'

describe "countries/edit" do
  before(:each) do
    @country = assign(:country, stub_model(Country,
      :display_name => "MyString",
      :full_name => "MyString",
      :code => "MyString",
      :longitude => "9.99",
      :latitude => "9.99"
    ))
  end

  it "renders the edit country form" do
    render

    assert_select "form[action=?][method=?]", country_path(@country), "post" do
      assert_select "input#country_display_name[name=?]", "country[display_name]"
      assert_select "input#country_full_name[name=?]", "country[full_name]"
      assert_select "input#country_code[name=?]", "country[code]"
      assert_select "input#country_longitude[name=?]", "country[longitude]"
      assert_select "input#country_latitude[name=?]", "country[latitude]"
    end
  end
end
