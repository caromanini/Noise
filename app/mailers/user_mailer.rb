class UserMailer < ApplicationMailer
    def welcome_email
        @user = params[:user]
        mail(to: "grupo08pdi@gmail.com", subject: "New Email Registered")
    end
end
