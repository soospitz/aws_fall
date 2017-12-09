class MainController < ApplicationController
    def new
    end 
    
    def create
        @t = Main.new
        @t.title = params[:id]
    end
    
     def index
        @t = Main.all
    end
    
    def show
        @t = Main.find(params[:id])
        @c = comment.where(main_id: params[:id])
    end
        
end
