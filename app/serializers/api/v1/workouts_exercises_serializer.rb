class Api::V1::WorkoutsExercisesSerializer < ActiveModel::Serializer
  attribute :id, key: :workouts_exercise_id
	attributes :selection_type, :exercise
end