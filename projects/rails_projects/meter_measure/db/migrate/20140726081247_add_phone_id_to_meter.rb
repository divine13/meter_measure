class AddPhoneIdToMeter < ActiveRecord::Migration
  def change
    add_column :meters, :phone_id, :long, default: "unknown-z-z1x"
  end
end
