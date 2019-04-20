class Exercise < ApplicationRecord
  has_many :workouts_exercises, dependent: :destroy, inverse_of: :exercise
  has_many :workouts, through: :workouts_exercises

  has_many :exercises_muscles, dependent: :destroy
  has_many :muscles, through: :exercises_muscles

  # SCOPES
  scope :biceps_all, -> { joins(:muscles).where(muscles: Muscle.all_biceps) }
  scope :biceps_inner, lambda do
    joins(:muscles).where(muscles: { name: 'Inner biceps' })
  end
  scope :biceps_outer, lambda do
    joins(:muscles).where(muscles: { name: 'Outer biceps' })
  end
  scope :biceps_overall, lambda do \
    joins(:muscles).where(muscles: { name: 'Overall biceps' })
  end
  scope :triceps_all, -> { joins(:muscles).where(muscles: Muscle.all_triceps) }
  scope :triceps_short_head, lambda do
    joins(:muscles).where(muscles: { name: 'Triceps short head' })
  end
  scope :triceps_long_head, lambda do
    joins(:muscles).where(muscles: { name: 'Triceps long head' })
  end
  scope :triceps_medial_head, lambda do
    joins(:muscles).where(muscles: { name: 'Triceps medial head' })
  end
  scope :legs_all, -> { joins(:muscles).where(muscles: Muscle.all_legs) }
  scope :quads_inner, lambda do
    joins(:muscles).where(muscles: { name: 'Inner quads' })
  end
  scope :quads_outer, lambda do
    joins(:muscles).where(muscles: { name: 'Outer quads' })
  end
  scope :hamstrings, lambda do
    joins(:muscles).where(muscles: { name: 'Hamstrings' })
  end
  scope :glutes, -> { joins(:muscles).where(muscles: { name: 'Glutes' }) }
  scope :calves, -> { joins(:muscles).where(muscles: { name: 'Calves' }) }
  scope :legs_overall, lambda do
    joins(:muscles).where(muscles: { name: 'Overall legs' })
  end
end
