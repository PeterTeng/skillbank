class SkillsController < BaseController
  def index
    @skills = Skill.page(params[:page])
  end

  def show
    @skill = Skill.find(params[:id])
    @skill_users = @skill.users.page(params[:page])
  end

  def create
    #  Params :user_id passed from form in users/show with hidden_field_tag
    @user = User.find(params[:user_id])
    #  Check if skill name exist
    if Skill.find_by(name: params[:skill][:name]).nil?
      @skill = @user.skills.build(skill_params)
      if @skill.save
        @skill_user = UserSkill.create(
          user_id: @user.id,
          skill_id: @skill.id
        )
        if @skill_user.save
          redirect_to @user
        else
          redirect_to @user
        end
      else
        redirect_to @user
      end
    else
      skill_id = Skill.find_by(name: params[:skill][:name]).id
      @skill_user = UserSkill.create(
        user_id: @user.id,
        skill_id: skill_id
      )
      if @skill_user.save
        redirect_to @user
      else
        redirect_to @user
      end
    end
  end

  def destroy
  end

  private
   def skill_params
     params.require(:skill).permit(:name, users_attributes: [:name])
   end
end
