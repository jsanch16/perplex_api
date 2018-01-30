class Muscle < ApplicationRecord
  has_many :exercises_muscles, dependent: :destroy
  has_many :exercises, through: :exercises_muscles

  scope :all_biceps, -> { where(id: [1,2]) }
end
