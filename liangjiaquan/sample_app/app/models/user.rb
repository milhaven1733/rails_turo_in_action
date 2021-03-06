class User < ActiveRecord::Base
  # downcase email before save
  # before_save { self.email = email.downcase }
  # execise 6.2
  before_save { email.downcase! }
  # valid name
  validates :name, presence: true, length: { maximum: 50 }
  # valid email
  # the REGEX is deffirent from the book
  VALID_EMAIL_REGEX = /\A[\w\+\-.]+@(\.*[a-z\d\-]+)+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255}, 
  format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  
  has_secure_password
  
  validates :password, length: { minimum: 6 }
end