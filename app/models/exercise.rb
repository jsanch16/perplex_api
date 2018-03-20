class Exercise < ApplicationRecord

  has_many :workouts_exercises, dependent: :destroy, inverse_of: :exercise
  has_many :workouts, through: :workouts_exercises

  has_many :exercises_muscles, dependent: :destroy
  has_many :muscles, through: :exercises_muscles

  # scope :by_muscle, -> muscle_ids { joins(:muscles).where(muscles: {id: muscle_ids}) }

  scope :biceps_all, -> { joins(:muscles).where(muscles: Muscle.all_biceps) }
  scope :biceps_inner, -> { joins(:muscles).where(muscles: {name: 'Inner biceps'})}
  scope :biceps_outer, -> { joins(:muscles).where(muscles: {name: 'Outer biceps'})}
  scope :biceps_overall, -> { joins(:muscles).where(muscles: {name: 'Overall biceps'})}

  scope :triceps_all, -> { joins(:muscles).where(muscles: Muscle.all_triceps) }
  scope :triceps_short_head, -> { joins(:muscles).where(muscles: {name: 'Triceps short head'}) }
  scope :triceps_long_head, -> { joins(:muscles).where(muscles: {name: 'Triceps long head'}) }
  scope :triceps_medial_head, -> { joins(:muscles).where(muscles: {name: 'Triceps medial head'}) }
end
