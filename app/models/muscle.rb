class Muscle < ApplicationRecord
  has_many :exercises_muscles, dependent: :destroy
  has_many :exercises, through: :exercises_muscles

  belongs_to :muscle_group

  scope :all_biceps, -> { Muscle.joins(:muscle_group).where(muscle_groups: {name: "Biceps"}) }
  scope :all_triceps, -> { Muscle.joins(:muscle_group).where(muscle_groups: {name: "Triceps"}) }
  scope :all_shoulders, -> { Muscle.joins(:muscle_group).where(muscle_groups: {name: "Shoulders"}) }
  scope :all_chest, -> { Muscle.joins(:muscle_group).where(muscle_groups: {name: "Chest"}) }
  scope :all_legs, -> { Muscle.joins(:muscle_group).where(muscle_groups: {name: "Legs"}) }
  scope :all_back, -> { Muscle.joins(:muscle_group).where(muscle_groups: {name: "Back"}) }
end
