class HomeController < ApplicationController
    def index
        @game = Game.all 
        @league = League.all 
    end

    

end
