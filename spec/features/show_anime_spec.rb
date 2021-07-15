require 'rails_helper'

RSpec.describe 'showing anime' do
    it 'displays information about anime' do
        anime = Anime.create(name: "Naruto")
        visit "animes/#{anime.id}"
        expect(page).to have_text(anime.name)
    end
end