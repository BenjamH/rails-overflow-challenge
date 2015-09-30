class WelcomeController < ApplicationController
  def index
    auth_current_user
  end
end
