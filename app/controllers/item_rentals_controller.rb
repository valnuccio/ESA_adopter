class ItemRentalsController < ApplicationController
    before_action :find_item_rental, only: [:show,:create, :edit, :update]
    

    def index
        @item_rentals= ItemRental.all
    end

    def show

    end

    def new
        @item_rental = ItemRental.new
    end

    def create
        @item_rental = ItemRental.create(ir_params)
        redirect_to item_rental_path(@item_rental)
    end

    def edit

    end

    def update
        @item_rental.update
        redirect_to item_rental_path(@item_rental)
    end

    def destroy
        @item_rental.destroy
    end

    private

    def find_item_rental
        @item_rental = ItemRental.find(params[:id])
    end

    def ir_params
        params.require(:item_rental).permit!
    end


end
