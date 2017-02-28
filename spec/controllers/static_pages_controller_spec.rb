require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do

  describe "GET #home" do
    it "returns http success" do
      get :home
      expect(response).to have_http_status(:success)
    end
    it "renders home template" do
      get :home
      expect(response).to render_template(:home)
    end
  end

  describe "GET #data" do
    before :each do
      @file = fixture_file_upload('files/ids.json', 'application/json')
    end
    it "returns http success" do
      post :data, file: @file
      expect(response).to have_http_status(:success)
    end
    it "renders home template" do
      post :data, file: @file
      expect(response.header['Content-Type']).to match 'application/json'
    end
  end

end
