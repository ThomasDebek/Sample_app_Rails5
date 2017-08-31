class User < ApplicationRecord
  #has_secure_password :validations => false
  #has_secure_password


  has_secure_password
  attr_accessor :password, :password_confirmation

  #has_secure_password validations: false



  #attr_accessor :password, :password_confirmation


  before_save { email.downcase! }
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
            format: { with: VALID_EMAIL_REGEX },
            uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
end