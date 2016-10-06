class Skill < ActiveRecord::Base
  #  Association
  has_many :user_skills
  has_many :users, through: :user_skills
  has_many :endorsements
  has_many :endorsing_users, through: :endorsements, source: :user

  #  Validation
  #  name
  validates(
    :name,
    presence: true,
    length: { maximum: 25 }
  )
end
