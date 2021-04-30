class CreateClimberCount < ActiveRecord::Migration[6.1]
  def change
    create_table :climber_counts do |t|
      t.integer :climber
      t.timestamps
    end
  end
end
