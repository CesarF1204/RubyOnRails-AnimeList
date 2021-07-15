require 'rails_helper'

RSpec.describe 'updating anime' do
    it 'should update anime and redirect to animes page' do
        anime = Anime.create(name: "Naruto")
        visit "/animes/#{anime.id}/edit"
        fill_in "Name", with: "Kakashi"
        click_button "Update"
        expect(current_path).to eq("/")
        expect(page).to have_text("Kakashi")
    end
end