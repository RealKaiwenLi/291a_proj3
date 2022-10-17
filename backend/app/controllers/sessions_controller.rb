class SessionsController < ApplicationController
    def create
        user = User.find_by(username: params[:session][:username])
        if user
          session[:user_id] = user.id
          redirect_to "/posts"
        else
          render 'new'
        end
    end
       
    def destroy
        session[:user_id] = nil
        flash[:notice] = "You have been logged out."
        redirect_to root_path
    end
  end
  