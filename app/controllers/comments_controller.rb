class CommentsController < ApplicationController

    def index
        if params[:user_id]
            @user = User.find(params[:user_id])
            @comments = @user.comments
        else
            @comments = Comment.all 
        end
    end

end
