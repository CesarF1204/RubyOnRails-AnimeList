class AnimesController < ApplicationController
    def index
        @animes = Anime.all
    end
    def create
        render 'new'
    end
    def create_process
        Anime.create(name: params[:name])
        redirect_to('/')
    end
    def show
        @anime = Anime.find(params[:id])
    end
    def edit
        @anime = Anime.find(params[:id])
        render 'edit'
    end
    def update
        anime = Anime.find(params[:id])
        anime.name = params[:name]
        anime.save
        redirect_to('/')
    end
    def delete
        anime= Anime.find(params[:id])
        anime.destroy
        redirect_to('/')
    end
end
