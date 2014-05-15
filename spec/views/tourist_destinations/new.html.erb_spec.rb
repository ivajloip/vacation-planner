require 'spec_helper'

describe "tourist_destinations/new" do
  before(:each) do
    assign(:tourist_destination, stub_model(TouristDestination,
      :title => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new tourist_destination form" do
    render

    assert_select "form[action=?][method=?]", tourist_destinations_path, "post" do
      assert_select "input#tourist_destination_title[name=?]", "tourist_destination[title]"
      assert_select "textarea#tourist_destination_description[name=?]", "tourist_destination[description]"
    end
  end
end
