class SecretsController < ApplicationController
    before_action :require_login

    def show
        if logged_in?
            @user = current_user
        # else
        #     require_login
        end
    end
end