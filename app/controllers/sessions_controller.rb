class SessionsController < ApplicationController

    def new
        
    end

    def create
        # byebug
        if !!params[:name] && params[:name].length > 0
            # byebug
            session[:name] = params[:name]
            redirect_to user_path
        else
            redirect_to login_path
        end
    end

    def destroy
        session[:name] = nil
    end
end