class CreateGameIdeas < ActiveRecord::Migration[6.0]
  def change
    create_table :game_ideas do |t|
      t.string :title
      t.text :description
      t.string :game_type
      t.text :beginning_content
      t.text :middle_content
      t.text :ending_content
      
      t.timestamps
    end
  end
end
