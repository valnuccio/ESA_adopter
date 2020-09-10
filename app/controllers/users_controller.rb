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

end

def not_me

end


private
def find_user
    @user = current_user
    
end



def verify_self
  

end
    



end