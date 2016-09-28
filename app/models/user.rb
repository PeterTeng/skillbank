class User < ActiveRecord::Base


  #  before_save
  before_save { self.email = email.downcase }

  #  Validation
  #  username
  VALID_USERNAME_REGEX = /\A[a-zA-Z0-9]+\Z/
  validates(
            :username,
            presence: true,
            length: { maximum: 30 },
            format: { with: VALID_USERNAME_REGEX }
  )

  #  email
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates(
            :email,
            presence: true,
            uniqueness: { case_sensitive: false },
            length: { maximum: 255 },
            format: { with: VALID_EMAIL_REGEX }
  )
end
