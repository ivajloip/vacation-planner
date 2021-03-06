require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe CountriesController do

  let(:country) { mock_model Country }
  let(:country_id) { '42' }

  describe "GET index" do
    it "assigns all countries as @countries" do
      expect(Country).to receive(:all).and_return('countries')

      get :index

      expect(assigns(:countries)).to eq('countries')
    end
  end

  describe "GET show" do
    it "assigns the requested country as @country" do
      expect(Country).to receive(:find).with(country_id)

      get :show, id: country_id
    end

    it "assigns the requested country as @country" do
      expect(Country).to receive(:find).and_return(country)

      get :show, id: country_id

      expect(assigns(:country)).to eq(country)
    end
  end

  describe "GET new" do
    it "assigns a new country as @country" do
      expect(Country).to receive(:new).and_return(country)

      get :new

      expect(assigns(:country)).to eq(country)
    end
  end

  describe "GET edit" do
    it "assigns the requested country as @country" do
      expect(Country).to receive(:find).with(country_id).
        and_return('contry')

      get :edit, id: country_id

      expect(assigns(:country)).to eq('contry')
    end
  end

  describe "POST create" do
    let(:arguments) { 'country_arguments' }

    def create_country
      post :create, country: arguments
    end

    before do
      allow(Country).to receive(:new).and_return(country)
      allow(country).to receive(:save)
      expect(arguments).to receive(:permit).and_return(arguments)
    end

    describe "with valid params" do
      it "initiatializes a new Country with params[:country]" do
        expect(Country).to receive(:new).with(arguments).
          and_return(country)

        create_country
      end

      it "assigns a newly created country as @country" do
        create_country

        expect(assigns(:country)).to eq(country)
      end

      it "redirects to the created country" do
        expect(country).to receive(:save).and_return(true)

        create_country

        expect(response).to redirect_to(country)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved country as @country" do
        expect(country).to receive(:save).and_return(false)

        create_country

        expect(assigns(:country)).to eq(country)
      end

      it "re-renders the 'new' template" do
        expect(country).to receive(:save).and_return(false)

        create_country

        expect(response).to render_template :new
      end
    end
  end

  describe "PUT update" do
    let(:arguments) { 'country_arguments' }

    def update_country
      put :update, id: country_id, country: arguments
    end

    before do
      allow(Country).to receive(:find).and_return(country)
      allow(country).to receive(:update).and_return(false)
      expect(arguments).to receive(:permit).and_return(arguments)
    end

    describe "with valid params" do
      it "looks up the TouristDestination by id" do
        expect(Country).to receive(:find).with(country_id).and_return(country)

        update_country
      end

      it "invokes update with params[:tourist_destination]" do
        expect(country).to receive(:update).with(arguments)

        update_country
      end

      it "assigns the requested country as @country" do
        update_country

        expect(assigns(:country)).to eq(country)
      end

      it "redirects to the country on success" do
        expect(country).to receive(:update).with(arguments).
          and_return(true)

        update_country

        expect(response).to redirect_to(country)
      end
    end

    describe "with invalid params" do
      it "assigns the country as @country" do
        update_country

        expect(assigns(:country)).to eq(country)
      end

      it "re-renders the 'edit' template" do
        update_country

        expect(response).to render_template(:edit)
      end
    end
  end

  describe "DELETE destroy" do
    before do
      allow(Country).to receive(:find).and_return(country)
      allow(Country).to receive(:destroy)
    end

    def delete_country
      delete :destroy, id: country_id
    end

    it "looks up the country by id" do
      expect(Country).to receive(:find).and_return(country)

      delete_country
    end

    it "attempts to destroy the requested country" do
      expect(country).to receive(:destroy)

      delete_country
    end

    it "redirects to the countries list" do
      delete_country

      expect(response).to redirect_to(countries_path)
    end
  end

end
