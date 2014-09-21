module ApplicationHelper
  def sign_in(user)
    cookies.permanent[:remember_token] = user.remember_token
    user.update_attribute(:remember_token, user.remember_token)
    self.current_user = user
  end

  def current_user(token)
    User.find_by_remember_token(token)
  end

  def signed_in?(token)
    !current_user(token).nil?
  end


end
