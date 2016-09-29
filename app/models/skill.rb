class Skill < ActiveRecord::Base
  #  Validation
  #  name
  validates(
    :name,
    presence: true,
    length: { maximum: 25 }
  )
end
