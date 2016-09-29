class Skill < ActiveRecord::Base
  #  Association
  belongs_to :user
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
