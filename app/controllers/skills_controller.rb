class SkillsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @skill = @user.skills.build(skill_params)
    if @skill.save
      @skill_user = UserSkill.create(
        user_id: @user.id,
        skill_id: @skill.id
      )
      if @skill_user.save
        redirect_to @user
      else
        binding.pry
        render 'welcome/index'
      end
    else
      render 'welcome/index'
    end
  end

  def destroy
  end

  private
   def skill_params
     params.require(:skill).permit(:name, users_attributes: [:name])
   end
end
