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
        @rental = Rental.new(rental_params)
        if @rental.valid?
            @rental.save
            @rental.pet.update(:available => "false")
            @rental.user.update(:wallet => (@rental.user.wallet - @rental.cost))
            redirect_to rental_path(@rental.id)    
        else 
            flash.now[:messages] = @rental.errors.full_messages[0]
            render :show    
        end   
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

    def raise_and_rescue  
        begin  
          raise 'An error has occured.'    
        rescue  
          puts 'You do not have enough funds for this rental length. Try again or add money to your wallet.' 
        end   
    end  

end
