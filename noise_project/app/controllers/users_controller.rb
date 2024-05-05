class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.new user_params
        
        if @user.save
            # UserMailer.welcome_email(user).deliver_now

            UserMailer.with(user: @user).welcome_email.deliver_now


            redirect_to new_user_path
        else
            render :new
        end
    end

    private
        def user_params
            params.require(:user).permit(:email)
        end
end