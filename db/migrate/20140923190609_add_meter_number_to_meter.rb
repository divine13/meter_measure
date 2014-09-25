class AddMeterNumberToMeter < ActiveRecord::Migration
  def change
    add_column :meters, :meter_number, :string
    add_column :meters, :people_in_house, :integer
  end
end
