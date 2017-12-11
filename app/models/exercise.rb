class Exercise < ApplicationRecord

  has_many :workouts_exercises, dependent: :destroy
  has_many :workouts, through: :workouts_exercises

  has_many :exercises_muscles, dependent: :destroy
  has_many :muscles, through: :exercises_muscles
end
