class GameIdeasController < ApplicationController

    def index
        if params[:user_id]
            @user = User.find(params[:user_id])
            @game_ideas = @user.game_ideas
        else
            @game_ideas = GameIdea.all
        end
    end

    def show
        @game_idea = GameIdea.find(params[:id])
    end

    def new
        @game_idea = GameIdea.new(user_id: params[:user_id])
    end

    def create
        @game_idea = GameIdea.new(game_idea_params)
        
        if @game_idea.save
            redirect_to game_ideas_path
        else
            render :new
        end
    end

    def edit
        @game_idea = GameIdea.find(params[:id])
    end

    def update
        @game_idea = GameIdea.find(params[:id])
        if @game_idea.update(game_idea_params)
            redirect_to game_idea_path 
        else
            render :edit 
        end
    end

    def destroy
        @game_idea = GameIdea.find(params[:id])
        @game_idea.destroy
        redirect_to game_ideas_path
    end

    private 

    def game_idea_params
        params.require(:game_idea).permit(:title, :description, :game_type, :beginning_content, :middle_content, :ending_content, :user_id)
    end

end
