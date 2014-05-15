require 'spec_helper'

describe "tourist_destinations/index" do
  before(:each) do
    assign(:tourist_destinations, [
      stub_model(TouristDestination,
        :title => "Title",
        :description => "MyText"
      ),
      stub_model(TouristDestination,
        :title => "Title",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of tourist_destinations" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
