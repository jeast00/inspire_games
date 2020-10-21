class CommentsController < ApplicationController

    def index
        if params[:user_id]
            @user = User.find(params[:user_id])
            @comments = @user.comments
        else
            @comments = Comment.all 
        end
    end

    def new
        @comment = Comment.new(user_id: params[:user_id])
    end

    def create
        @comment = Comment.new(comment_params)

        if @comment.save
             redirect_to comments_path 
        else
            render :new
        end
    end


    private

    def comment_params
        params.require(:comment).permit(:content, :game_idea_id, :user_id)
    end


end
