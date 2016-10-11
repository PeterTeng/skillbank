class SkillsController < BaseController
  def index
    @skills = Skill.all
  end

  def show
    @skill = Skill.find(params[:id])
    @skill_users = @skill.users.page(params[:page])
  end

  def create
    #  Params :user_id passed from form in users/show with hidden_field_tag
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
