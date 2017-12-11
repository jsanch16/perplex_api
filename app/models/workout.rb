class Workout < ApplicationRecord
  has_many :workouts_exercises, dependent: :destroy
  has_many :exercises, through: :workouts_exercises

  belongs_to :user
end
