class Exercise < ApplicationRecord

  has_many :workouts_exercises, dependent: :destroy
  has_many :workouts, through: :workouts_exercises

  has_many :exercises_muscles, dependent: :destroy
  has_many :muscles, through: :exercises_muscles

  scope :all_biceps, -> { joins(:exercises_muscles).where(exercises_muscles: {muscle_id: Muscle.all_biceps.ids}) }
  scope :inner_biceps, -> { joins(:exercises_muscles => :muscles).where(muscles: {name: 'Inner biceps'})}
  scope :outer_biceps, -> { joins(:exercises_muscles => :muscles).where(muscles: {name: 'Outer biceps'})}
  scope :overall_biceps, -> { joins(:exercises_muscles => :muscles).where(muscles: {name: 'Overall biceps'})}

end
