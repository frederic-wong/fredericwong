class CreateTheGymCount < ActiveRecord::Migration[6.1]
  def change
    create_table :the_gym_counts do |t|
      t.integer :gymer
      t.datetime :last_updated
      t.timestamps
    end
  end
end
