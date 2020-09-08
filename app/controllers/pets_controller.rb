class PetsController < ApplicationController
    #validations for unique pet names and owners
    before_action :find_pet, only: [:show, :edit, :update, :destroy]

    def index
        @pets = Pet.all
    end

    def show
        
    end

    def new
        @pet = Pet.new
    end

    def create
        @pet = Pet.create(pet_params)
        redirect_to user_path(@pet.user)
    end

    def edit
        
    end

    def update
    @pet.update(pet_params)
    redirect_to user_path(@pet.user)
    end

    def destroy
        @pet.destroy
        redirect_to user_path(@pet.user)
    end

    private

    def find_pet
        @pet = Pet.find(params[:id])
    end

    def pet_params
        params.require(:pet).permit!
    end



end
