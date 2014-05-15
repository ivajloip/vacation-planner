require 'spec_helper'

describe "tourist_destinations/edit" do
  before(:each) do
    @tourist_destination = assign(:tourist_destination, stub_model(TouristDestination,
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit tourist_destination form" do
    render

    assert_select "form[action=?][method=?]", tourist_destination_path(@tourist_destination), "post" do
      assert_select "input#tourist_destination_title[name=?]", "tourist_destination[title]"
      assert_select "textarea#tourist_destination_description[name=?]", "tourist_destination[description]"
    end
  end
end
