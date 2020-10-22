class GameIdea < ApplicationRecord
    validates :title, :description, :game_type, :beginning_content, :middle_content, :ending_content, presence: true
    has_many :comments
    has_many :users, through: :comments
end
