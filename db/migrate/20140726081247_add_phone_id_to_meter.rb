class AddPhoneIdToMeter < ActiveRecord::Migration
  def change
    add_column :meters, :phone_id, :text, default: "unknown-z-z1x"
  end
end
