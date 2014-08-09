class AddEmailIndexToUsers < ActiveRecord::Migration
  def change

	before_save { |user| user.email.downcase }

  	add_index :users, :email, unique: true
  end
end
