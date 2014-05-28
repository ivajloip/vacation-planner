require 'spec_helper'

describe "countries/new" do
  before(:each) do
    assign(:country, stub_model(Country,
      :display_name => "MyString",
      :full_name => "MyString",
      :code => "MyString",
      :longitude => "9.99",
      :latitude => "9.99"
    ).as_new_record)
  end

  it "renders new country form" do
    render

    assert_select "form[action=?][method=?]", countries_path, "post" do
      assert_select "input#country_display_name[name=?]", "country[display_name]"
      assert_select "input#country_full_name[name=?]", "country[full_name]"
      assert_select "input#country_code[name=?]", "country[code]"
      assert_select "input#country_longitude[name=?]", "country[longitude]"
      assert_select "input#country_latitude[name=?]", "country[latitude]"
    end
  end
end
