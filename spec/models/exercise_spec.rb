require 'rails_helper'

RSpec.describe Exercise, type: :model do
  it { is_expected.to have_many(:workouts_exercises).inverse_of(:exercise) }
  it { is_expected.to have_many(:workouts).through(:workouts_exercises) }

  it { is_expected.to have_many(:exercises_muscles).dependent(:destroy) }
  it { is_expected.to has_many(:muscles).through(:exercises_muscles) }
end
