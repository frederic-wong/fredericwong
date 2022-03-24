class DeleteTheGymCount < ActiveRecord::Migration[6.1]
  def change
    drop_table :the_gym_counts do |t|
      t.integer :gymer, null: false
      t.datetime :last_updated, null: false
      t.timestamps null: false
    end
  end
end
