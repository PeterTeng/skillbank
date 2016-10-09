class UsersController < ApplicationController

  before_action :set_user, only: :show

  def show
    @user_skills = @user.skills
    @skill = @user.skills.build
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      redirect_to user_path @user
    else
      render 'new'
    end
  end

  private def set_user
    @user = User.find params[:id]
  end

  private def user_params
    params.require(:user).permit(
      :username,
      :email,
      :password,
      :password_confirmation
    )
  end
end
