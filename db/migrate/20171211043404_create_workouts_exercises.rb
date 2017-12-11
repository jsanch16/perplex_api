class CreateWorkoutsExercises < ActiveRecord::Migration[5.0]
  def change
    create_table :workouts_exercises do |t|
      t.references :workout, index: true, foreign_key: true
      t.references :exercise, index: true, foreign_key: true
      
      t.timestamps
    end
  end
end
