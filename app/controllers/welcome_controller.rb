class WelcomeController < ApplicationController
  before_action :logged_in_root_view

  def index
    @user = User.new
  end

  private def logged_in_root_view
    if current_user != nil
      redirect_to current_user
    end
  end
end
