class SessionsController < ApplicationController

    def welcome
    end

    def destroy
        session.delete(:user_id)
        redirect_to '/'
    end

    def new
    end

    def create
        #try to find the user in the system
        @user = User.find_by(username: params[:user][:username])

        if @user.try(:authenticate, params[:user][:password])
            session[:user_id] = @user.id
            redirect_to user_path
        else
            flash[:error] = "Please use correct username and password"
            redirect_to login_path
        end
    end


end