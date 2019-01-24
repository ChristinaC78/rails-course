class UsersController < ApplicationController
    def index
        @users = User.all
    end
    
    def new
    end
    
    def create
        user = User.new
        user.email = params[:email]
        user.password = params[:password]
        user.save
        redirect_to '/users'
    end
    
end
