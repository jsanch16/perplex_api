class CreateRelationships < ActiveRecord::Migration[5.0]
  def change
    create_table :relationships do |t|
      t.references :follower, index: true, foreign_key: { to_table: :users }
      t.references :following, index: true, foreign_key: { to_table: :users }
      t.timestamps
    end
  end
end
