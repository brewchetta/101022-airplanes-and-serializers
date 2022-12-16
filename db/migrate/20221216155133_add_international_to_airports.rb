class AddInternationalToAirports < ActiveRecord::Migration[7.0]
  def change
    add_column :airports, :international, :boolean
  end
end
