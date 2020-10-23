# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.destroy_all
GameIdea.destroy_all
Comment.destroy_all

10.times do 
    User.create(user_name:Faker::Lorem.word,
                first_name:Faker::Name.first_name,
                last_name:Faker::Name.last_name,
                email:Faker::Internet.email,
                password:Faker::Internet.password)
end

10.times do
    GameIdea.create(title:Faker::Game.title,
                    description:Faker::Hipster.sentence,
                    game_type:Faker::Game.genre,
                    beginning_content:Faker::Lorem.paragraph,
                    middle_content:Faker::Lorem.paragraph,
                    ending_content:Faker::Lorem.paragraph,
                    user_id: User.all.sample.id)
end

40.times do
    Comment.create(content:Faker::Hipster.paragraph, 
                   user_id: User.all.sample.id, 
                   game_idea_id: GameIdea.all.sample.id)
end


