class User < ApplicationRecord
    has_secure_password
    validates :user_name, :first_name, :last_name, :email, :password
    has_many :comments
    has_many :game_ideas, through: :comments
end
