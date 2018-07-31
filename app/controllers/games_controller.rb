class GamesController < ApplicationController
    def index
        @game = Game.all 
        @league = League.all
    end
        
    def new
        @game = Game.new
    end

    def create
        @game = Game.new
        @game.league_id = 1
        if @game.save
            redirect_to @game.league , notice: 'Game Created Successfully'
        else
            render :new
        end
    end

    def edit
        @game = Game.find(params[:id])
    end
    def update
        @game = Game.find(params[:id])
        @game.save
    end
end
