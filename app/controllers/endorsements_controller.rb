class EndorsementsController < ApplicationController
  def create
    @endorsement = Endorsement.create(user_id: current_user.id, user_skill_id: params[:user_skill_id])
    if @endorsement.save
      redirect_to :back
    else
      redirect_to user_path(current_user)
    end
  end

  def destroy
    @endorsement = current_user.endorsements.find_by(user_skill_id: params[:user_skill_id])
    @endorsement.destroy
    redirect_to :back
  end
end
