class CreateGameIdeas < ActiveRecord::Migration[6.0]
  def change
    create_table :game_ideas do |t|

      t.timestamps
    end
  end
end
