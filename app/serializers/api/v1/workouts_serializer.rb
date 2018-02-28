class Api::V1::WorkoutsSerializer < ActiveModel::Serializer
  attributes :name, :date

  has_many :exercises
end