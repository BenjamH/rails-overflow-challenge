class WelcomeController < ApplicationController
  def index
    auth_current_user
    @questions=Question.all
  end
end
