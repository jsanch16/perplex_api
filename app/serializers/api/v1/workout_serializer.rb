class Api::V1::WorkoutSerializer < ActiveModel::Serializer
  attributes :name, :date

  has_many :exercises
end