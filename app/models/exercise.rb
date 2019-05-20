class Exercise < ApplicationRecord
  has_many :workouts_exercises, dependent: :destroy, inverse_of: :exercise
  has_many :workouts, through: :workouts_exercises

  has_many :exercises_muscles, dependent: :destroy
  has_many :muscles, through: :exercises_muscles

  # SCOPES
  scope :biceps_all, -> { joins(:muscles).where(muscles: Muscle.all_biceps) }
  scope :biceps_inner, -> { joins(:muscles).where(muscles: { name: 'Inner biceps' }) }
  scope :biceps_outer, -> { joins(:muscles).where(muscles: { name: 'Outer biceps' }) }
  scope :biceps_overall, -> { joins(:muscles).where(muscles: { name: 'Overall biceps' }) }
  scope :triceps_all, -> { joins(:muscles).where(muscles: Muscle.all_triceps) }
  scope :triceps_short_head, -> { joins(:muscles).where(muscles: { name: 'Triceps short head' }) }
  scope :triceps_long_head, -> { joins(:muscles).where(muscles: { name: 'Triceps long head' }) }
  scope :triceps_medial_head, -> { joins(:muscles).where(muscles: { name: 'Triceps medial head' }) }
  scope :legs_all, -> { joins(:muscles).where(muscles: Muscle.all_legs) }
  scope :quads_inner, -> { joins(:muscles).where(muscles: { name: 'Inner quads' }) }
  scope :quads_outer, -> { joins(:muscles).where(muscles: { name: 'Outer quads' }) }
  scope :hamstrings, -> { joins(:muscles).where(muscles: { name: 'Hamstrings' }) }
  scope :glutes, -> { joins(:muscles).where(muscles: { name: 'Glutes' }) }
  scope :calves, -> { joins(:muscles).where(muscles: { name: 'Calves' }) }
  scope :legs_overall, -> { joins(:muscles).where(muscles: { name: 'Overall legs' }) }
end
