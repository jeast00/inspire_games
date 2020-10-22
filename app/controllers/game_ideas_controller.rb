class GameIdeasController < ApplicationController

    def index
        @game_ideas = GameIdea.all
    end

    def show
        @game_idea = GameIdea.find(params[:id])
    end

    def new
        @game_idea = GameIdea.new
    end

    def create
        @game_idea = GameIdea.new(game_idea_params)
        
        if @game_idea.save
            redirect_to game_ideas_path
        else
            render :new
        end
    end

    def update

    end

    def destroy

    end

    private 

    def game_idea_params
        params.require(:game_idea).permit(:title, :description, :game_type, :beginning_content, :middle_content, :ending_content)
    end

end
