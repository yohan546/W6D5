class CatsController < ApplicationController

    def index
        @cats = Cat.all
        render :index
    end

    def show
        @cat = Cat.find(params[:id])
        render 
    end

    def create
        kitty = Cat.new(cat_params)
        if kitty.save
            redirect_to cat_url(kitty)
        else
            render json: kitty.errors.full_messages, status: 422
        end
    end

    def new
        @cat = Cat.new
        render :new
    end

    def cat_params
        params.require(:cat).permit(:id, :name, :birth_date, :color, :sex, :description)
    end
end