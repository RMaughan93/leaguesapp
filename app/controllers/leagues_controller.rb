class LeaguesController < ApplicationController

    def index
        @league = League.all
        @game = Game.all
    end

    def new 
        @league = League.new
    end

    def create
        @league = League.new(league_params)
        if @league.save
            redirect_to @league, notice: 'League Created Successfully'
        else
            render :new
        end
    end


    def show
    end

     private 

     def league_params
        params.require(:league).permit(:id)
    end
end
