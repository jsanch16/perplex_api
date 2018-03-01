class Muscle < ApplicationRecord
  has_many :exercises_muscles, dependent: :destroy
  has_many :exercises, through: :exercises_muscles

  belongs_to :muscle_group

  scope :all_biceps, -> { where(id: [1,2]) }
  scope :all_triceps, -> { where(id: [4,5]) }
end
