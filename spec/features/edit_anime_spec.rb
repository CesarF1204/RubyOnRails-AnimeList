require 'rails_helper'

RSpec.describe 'editing anime' do
    it 'displays a form with values already prepopulated' do
        anime = Anime.create(name: "Naruto")
        visit "/animes/#{anime.id}/edit"
        expect(find_field('Name').value).to eq(anime.name)
    end
end