require 'rails_helper'

RSpec.describe StaticControllerController, type: :controller do

  describe "GET #quotes" do
    it "returns http success" do
      get :quotes
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #home" do
    it "returns http success" do
      get :home
      expect(response).to have_http_status(:success)
    end
  end

end
