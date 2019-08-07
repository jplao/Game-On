require 'rails_helper'

describe 'Visitor' do
  describe 'on the home page' do
    it 'can see a list of popular games' do
      visit root_path

      expect(page).to have_css('.game', count: 100)
    end
  end
end
