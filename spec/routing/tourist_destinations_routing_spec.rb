require "spec_helper"

describe TouristDestinationsController do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/tourist_destinations").to route_to("tourist_destinations#index")
    end

    it "routes to #new" do
      expect(:get => "/tourist_destinations/new").to route_to("tourist_destinations#new")
    end

    it "routes to #show" do
      expect(:get => "/tourist_destinations/1").to route_to("tourist_destinations#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/tourist_destinations/1/edit").to route_to("tourist_destinations#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/tourist_destinations").to route_to("tourist_destinations#create")
    end

    it "routes to #update" do
      expect(:put => "/tourist_destinations/1").to route_to("tourist_destinations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/tourist_destinations/1").to route_to("tourist_destinations#destroy", :id => "1")
    end

  end
end
