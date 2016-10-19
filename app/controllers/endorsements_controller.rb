class EndorsementsController < BaseController
  def create
    @endorsement = current_user.endorsements.build(user_skill_id: params[:user_skill_id])
    if @endorsement.save
      redirect_to :back
    else
      redirect_to user_path(current_user)
    end
  end

  def destroy
    @endorsement = current_user.endorsements.find(params[:id])
    @endorsement.destroy
    redirect_to :back
  end
end
