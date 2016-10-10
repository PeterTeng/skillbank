class User < ActiveRecord::Base
  #  Association
  has_many :user_skills
  has_many :skills, through: :user_skills

  has_many :endorsements
  has_many :endorsed_skills, through: :endorsements, source: :user_skill

  #  attr_accessor
  attr_accessor :remember_token

  #  Scope
  default_scope -> { order(created_at: :asc) }

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

  # User security
  has_secure_password
  validates(
    :password,
    presence: true,
    length: { minimum: 7 },
    allow_nil: true
  )

  # Return hash
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

  # Return random token
  def User.new_token
    SecureRandom.urlsafe_base64
  end

  def remember
    self.remember_token = User.new_token
    update_attribute(:remember_digest, User.digest(remember_token))
  end

  def authenticated?(remember_token)
    return false if remember_digest.nil?
    BCrypt::Password.new(remember_digest).is_password?(remember_token)
  end

  def forget
    update_attribute(:remember_digest, nil)
  end
end
