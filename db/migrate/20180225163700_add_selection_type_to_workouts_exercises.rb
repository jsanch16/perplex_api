class AddSelectionTypeToWorkoutsExercises < ActiveRecord::Migration[5.0]
  def change
    add_column :workouts_exercises, :selection_type, :string
  end
end
