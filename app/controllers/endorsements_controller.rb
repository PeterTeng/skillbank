class EndorsementsController < ApplicationController
  def create
    @endorsement = Endorsement.create(user_id: current_user.id, user_skill_id: params[:user_skill_id])
  end

  def destroy
    @endorsement = current_user.endorsements.find_by(user_skill_id: params[:user_skill_id])
    @endorsement.destroy
  end
end
