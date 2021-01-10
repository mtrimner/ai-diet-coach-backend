class AuthenticationController < ApplicationController

    def login
       user = User.find_by(email: params[:email])
       if(!user)
        render json: { error: "Invalid username"}, status: :unauthorized
       else
        if user.authenticate(params[:password])
            # secret_key = Rails.application.secrets.secret_key_base[0]
            token = JWT.encode({
                user_id: user.id,
                email: user.email
            }, ENV['SECRET_KEY'])
         render json: { user: user, token: token }
        else
         render json: {message: "Wrong password"}, status: :unauthorized
        end
      end
    end

    def auto_login
        if session_user
            binding.pry
            render json: session_user
        else
            render json: {errors: 'No User Logged In'}
        end
    end

end
