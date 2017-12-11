class CreateWorkouts < ActiveRecord::Migration[5.0]
  def change
    create_table :workouts do |t|
      t.references :user, index: true, foreign_key: true
      t.string :name
      t.datetime :date
      
      t.timestamps
    end
  end
end
