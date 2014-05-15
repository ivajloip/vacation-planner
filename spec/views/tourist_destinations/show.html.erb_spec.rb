require 'spec_helper'

describe "tourist_destinations/show" do
  before(:each) do
    @tourist_destination = assign(:tourist_destination, stub_model(TouristDestination,
      :title => "Title",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
  end
end
