class User < ActiveRecord::Base

  before_save {self.email = email.downcase }
  has_secure_password

  attr_accessible :email, :first_name, :last_name, :login, :password, :password_confirmation

  validates :login, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX }
  validates :password, presence: true, length: { minimum: 6 }
  validates_uniqueness_of :login


end
