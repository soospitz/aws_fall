class CommentsController < ApplicationController
    def add
        @c = Comment.new
        @c.comment = params[:comment]
        @c.main_id = params[:id]
        @c.save
        redirect_to "/show_all/#{params[:id]}"
    end
end
