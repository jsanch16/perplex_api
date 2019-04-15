require 'rails_helper'

RSpec.describe "Api::V1::Sessions", type: :request do
  describe "GET /sessions" do
    it "" do
      get api_v1_sessions_path
      expect(response).to have_http_status(200)
      
    end
  end
end
