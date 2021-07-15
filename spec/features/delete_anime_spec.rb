require 'rails_helper'

RSpec.describe 'deleting anime' do
    it 'should destroy/delete an anime' do
        anime = Anime.create(name: "Naruto")
        visit "/animes/#{anime.id}"
        expect(page).to have_text("Naruto")
        click_button "Delete"
        expect(page).to_not have_text("Naruto")
    end
end