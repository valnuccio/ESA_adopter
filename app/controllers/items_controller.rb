class ItemsController < ApplicationController
    before_action :find_item, only: [:show, :edit, :update, :destroy]

    def index
        @items = Item.all
    end

    def show

    end

    def new
        @item = Item.new
    end

    def create
     @item = Item.create(item_params)
     redirect_to item_path(@item)
    end

    def edit

    end

    def update
        @item.update(item_params)
        redirect_to 
    end

    def destroy
    end

    private

    def find_item
        @item = Item.find(params[:id])
    end

    def item_params
        params.require(:item).permit!
    end


end
