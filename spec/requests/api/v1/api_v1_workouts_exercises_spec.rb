require 'rails_helper'

RSpec.describe "Api::V1::WorkoutsExercises", type: :request do
  describe "GET /api_v1_workouts_exercises" do
    it "works! (now write some real specs)" do
      get api_v1_workouts_exercises_path
      expect(response).to have_http_status(200)
    end
  end
end
