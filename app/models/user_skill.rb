class UserSkill < ActiveRecord::Base
  # Association
  belongs_to :user
  belongs_to :skill
end
