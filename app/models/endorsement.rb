class Endorsement < ActiveRecord::Base
  #  Association
  belongs_to :user
  belongs_to :user_skill
end
