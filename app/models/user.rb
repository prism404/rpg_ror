class User < ApplicationRecord
    has_secure_password

    validates :email, presence: true
    normalizes :email, with: ->(email) {email.strip.downcase}

    has_many :characters
    has_many :parties
end
