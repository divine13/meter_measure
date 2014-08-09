class User < ActiveRecord::Base
	has_secure_password
  has_many :meters
	before_save { self.email.downcase! }
  before_save { create_remember_token }

    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	validates :name, presence: true, length: { maximum: 50 }
	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX}, uniqueness: { case_sensitive: false}

	validates :password, presence: true, length: {minimum: 4}
	validates :password_confirmation, presence: true

private 
    def create_remember_token
    	self.remember_token = SecureRandom.urlsafe_base64
    end
end