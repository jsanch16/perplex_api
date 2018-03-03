class Api::V1::WorkoutSerializer < ActiveModel::Serializer
  attributes :name, :date

  has_many :workouts_exercises, key: :selected_exercises, serializer: Api::V1::WorkoutsExercisesSerializer
end