class User < ActiveRecord::Base

  	has_secure_password

	before_save { email.downcase! }
  	
	validates :name, presence: true, length: { maximum: 50 }
	
	validates :password, length: 6..20

	# VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(?:\.[a-z\d\-]+)*\.[a-z]+\z/i
  	# validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }

	validates :email, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }, uniqueness: { case_sensitive: false }

	has_many :restaurants

	def to_param
		name
	end

end
