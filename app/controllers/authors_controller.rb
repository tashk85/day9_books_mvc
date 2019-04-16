class AuthorsController < ApplicationController

    def index 
        @authors = Author.all
    end

    def create 
        Author.create(name: params["name"], date_of_birth: params["date_of_birth"])
        p params

        redirect_to authors_path
    end

    def new 
    end

    def show 
    end

    def edit
        # @author_id = params[:id].to_i
        # @author = Author.update(@author_id])
    end

    def update 
        # @bookmark_id = params[:id].to_i
        # session[:bookmarks][@bookmark_id] = params[:bookmark]

        redirect_to authors_path
    end

    def destroy
        # @bookmark_id = params[:id].to_i
        # session[:bookmarks].delete_at(@bookmark_id)
        
        redirect_to authors_path
    end

end