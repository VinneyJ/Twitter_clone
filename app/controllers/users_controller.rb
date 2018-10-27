class UsersController < ApplicationController
    def new
      @user = User.new
    end

    def create
      @user = User.new(user_paramaters)
      if @user.save
        redirect_to root_url
      else
        render'new'
    end
  end


    def edit
    end

    private

    def user_paramaters
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
