class CatsController < ApplicationController

    def index
        @cats = Cat.all
        render :index
    end

    def show
        @cat = Cat.find(params[:id])
        render 
    end

    def cat_params
        params.require(:cat).permit(:id)
    end
end