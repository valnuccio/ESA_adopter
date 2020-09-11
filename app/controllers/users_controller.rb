class UsersController < ApplicationController
before_action :find_user, only: [:show, :edit, :update, :destroy]

    def index
        @users= User.all
    end

    def show

    end

    def new
        @user = User.new
    end

    def create

    end

    def update
        @user.update(user_params)
        
        redirect_to user_path(@user)
    end

    def add_money
        @user = User.find(params[:user][:id])
        @user.wallet = (@user.wallet + params[:user][:wallet].to_f)
        @user.save
        redirect_to user_path(@user)
    end


    private
    def find_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit!
    end

    # def add_money_params
    #     params.require(:user).permit(:wallet)
    # end
end