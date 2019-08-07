require 'rails_helper'

describe 'board_game_atalas service' do
  before(:each) do
    @service = BoardGameAtlasService.new
  end

  it 'exists' do
    expect(@service).to be_an_instance_of(BoardGameAtlasService)
  end

  context 'it returns popular data' do
    it '.get_popular' do
      response = @service.get_popular
      expect(response[:games].count).to eq(100)
      expect(response[:games][0]).to have_key(:name)
      expect(response[:games][0]).to have_key(:min_players)
      expect(response[:games][0]).to have_key(:max_players)
      expect(response[:games][0]).to have_key(:description)
    end
  end

end
