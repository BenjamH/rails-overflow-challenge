module SessionsHelper

    def auth_current_user
    return nil unless session[:user_id]
    @current_user ||= User.find(session[:user_id])
  end

  def auth_login(user)
    session[:user_id] = user.id
    auth_current_user
  end

  def auth_logout
    session[:user_id] = nil
  end

  def logged_in?
    !session[:user_id].nil?
  end

  #used for the buttons in each individual questions's page
  def same_user?
    return nil unless current_user
    current_user.id == @question.author.id
  end

  #used in profile
  def edit_profile?
    return nil unless current_user
    current_user.id == @user.id
  end

end
