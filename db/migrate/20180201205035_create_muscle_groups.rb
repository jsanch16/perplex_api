class CreateMuscleGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :muscle_groups do |t|
    	t.string :name
    	
      t.timestamps
    end

    add_reference :muscles, :muscle_group, index: true, foreign_key: true
  end
end
