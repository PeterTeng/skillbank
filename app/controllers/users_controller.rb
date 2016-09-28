class UsersController < ApplicationController

  before_action :set_user, only: :show

  def show
  end

  def new
  end

  def create
  end

  private def set_user
    @user = User.find params[:id]
  end
end
