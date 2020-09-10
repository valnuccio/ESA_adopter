class RentalsController < ApplicationController
    before_action :find_rental, only: [:show, :edit, :update, :destroy]
    #validations for rental dates being unique


    def index
        @rentals=Rental.all
    end

    def show

    end

    def new
        @rental = Rental.new
    end

    def create
        @rental = Rental.create(rental_params)
        @rental.pet.available = "false"
        redirect_to rental_path(@rental.id)
    end

    def edit

    end

    def update
        @rental.update(rental_params)
        redirect_to user_path(@rental.user)
    end

    def destroy
        @rental.destroy
        redirect_to user_path(@rental.user)
    end

    private
    def find_rental
    @rental = Rental.find(params[:id])
    end

    def rental_params
        params.require(:rental).permit!
    end

end
