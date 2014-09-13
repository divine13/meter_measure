module SessionsHelper
	def sign_in(user)
		cookies.permanent[:remember_token] = user.remember_token
    user.update_attribute(:remember_token, user.remember_token)
		self.current_user = user 
	end

	def current_user=(user)
		@current_user = user
	end

	def current_user(email)
    @current_user ||= User.find_by_email(email)
	end

	def signed_in?(email)
		!current_user(email).nil?
	end
end
