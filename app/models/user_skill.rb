class UserSkill < ActiveRecord::Base
  # Association
  belongs_to :user
  belongs_to :skill
  has_many :endorsements
  has_many :endorsing_users, through: :endorsements, source: :user

  validates :user_id, :uniqueness => {:scope => :skill_id}
end
