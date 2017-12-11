class Muscle < ApplicationRecord
  has_many :exercises_muscles, dependent: :destroy
  has_many :exercises, through: :exercises_muscles
end
