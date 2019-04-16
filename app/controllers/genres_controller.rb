class GenresController < ApplicationController
    def index 
        @genres = Genre.all 
    end

    def new 

    end

    def create 
        p params
        Genre.create(name: params[:genre]["name"])
        redirect_to genres_path
    end
    
    def show 
        @genre = Genre.find(params[:id])
        @books = Genre.find(params[:id]).books
    end   
    

end
