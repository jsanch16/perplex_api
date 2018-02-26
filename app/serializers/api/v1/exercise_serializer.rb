class Api::V1::ExerciseSerializer < ActiveModel::Serializer
  attributes :name, :description

  has_many :muscles
end