class WelcomeController < ApplicationController
  def index
    @popular_games = BoardGameAtlasService.new.get_popular[:games]
  end

end
