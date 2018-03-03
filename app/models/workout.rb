class Workout < ApplicationRecord
  has_many :workouts_exercises, dependent: :destroy, inverse_of: :workout
  has_many :exercises, through: :workouts_exercises

  belongs_to :user

  accepts_nested_attributes_for :workouts_exercises, allow_destroy: true
end
