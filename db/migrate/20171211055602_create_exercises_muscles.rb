class CreateExercisesMuscles < ActiveRecord::Migration[5.0]
  def change
    create_table :exercises_muscles do |t|
      t.references :exercise, index: true, foreign_key: true
      t.references :muscle, index: true, foreign_key: true
      
      t.timestamps
    end
  end
end
