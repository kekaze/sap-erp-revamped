require 'rails_helper'

RSpec.describe "Reservations", type: :request do
  describe "GET /create" do
    it "returns http success" do
      get "/reservations/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /index" do
    it "returns http success" do
      get "/reservations/index"
      expect(response).to have_http_status(:success)
    end
  end

end
