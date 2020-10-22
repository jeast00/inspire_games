class User < ApplicationRecord
    has_secure_password
    validates :user_name, :first_name, :last_name, :email, :password, presence: true
    validates :user_name, :email, uniqueness: true
    has_many :comments
    has_many :game_ideas, through: :comments
end
