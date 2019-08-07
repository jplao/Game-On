class BoardGameAtlasService

  def get_popular
    to_json("search?order_by=popularity&client_id=#{ENV['BOARD_GAME_ATLAS_CLIENT_ID']}")
  end

  private
  def conn
    Faraday.new("https://www.boardgameatlas.com/api/")
  end

  def to_json(url)
    JSON.parse(conn.get(url).body, symbolize_names: true)
  end

end
