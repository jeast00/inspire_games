class GameIdeasController < ApplicationController

    def index
        @game_ideas = GameIdea.all
    end


end
