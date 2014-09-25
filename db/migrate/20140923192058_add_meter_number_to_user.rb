class AddMeterNumberToUser < ActiveRecord::Migration
  def change
    add_column :users, :meter_number, :string
    add_column :users, :people_in_house, :string
  end
end
