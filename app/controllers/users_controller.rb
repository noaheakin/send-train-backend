class UsersController < ApplicationController

    def create
      user = User.new(user_params)
      if user.save
        token = encode_token({user_id: @user.id})
        render json: {user:@user, token: token}
      else
        render json: @user.errors
      end 
    end 
    
    def login
      @user = User.find_by(username: params[:username])
      if @user && @user.authenticate(params[:password])
        token = encode_token({user_id: @user.id})
        render json: {user: UserSerializer.new(@user), token: token}
      else
        render json: {error: "Incorrect Username or Password"}
      end
    end 
    
    private
    
    def user_params
      params.permit(:username, :password)
    end

    # skip_before_action :authorized, only: [:create]

    # def profile
    #     render json: { user: UserSerializer.new(current_user) }, status: :accepted
    # end

    # def create
    #     @user = User.create(user_params)
    #     if @user.valid?
    #         @token = encode_token(user_id: @user.id)
    #         render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
    #     else
    #         render json: { error: 'failed to create user' }, status: :not_acceptable
    #     end
    # end

    # def login
    #     @user = User.find_by(username: params[:username])
    #     if @user && @user.authenticate(params[:password])
    #       token = encode_token({user_id: @user.id})
    #       render json: {user: UserSerializer.new(@user), token: token}
    #     else
    #       render json: {error: "Incorrect Username or Password"}
    #     end
    #   end 
     
    # private

    # def user_params
    #   params.require(:user).permit(:name, :username, :password, :bio, :profile_pic, :location)
    # end
end
