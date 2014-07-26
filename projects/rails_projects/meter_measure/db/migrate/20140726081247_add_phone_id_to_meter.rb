class AddPhoneIdToMeter < ActiveRecord::Migration
  def change
    add_column :meters, :phone_id, :long
  end
end
