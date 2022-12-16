class CreateAirplanes < ActiveRecord::Migration[7.0]
  def change
    create_table :airplanes do |t|
      t.integer :seats
      t.text :model
      t.integer :airport_id

      t.timestamps
    end
  end
end
