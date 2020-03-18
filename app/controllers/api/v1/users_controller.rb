module Api::V1
  class UsersController < ApplicationController
    skip_before_action :authorized, only: [:create]

    def profile
      render json: { user: UserSerializer.new(current_user) }, status: :accepted
    end

    def create
      # byebug
      @user = User.create(
        username: params[:user][:username],
        password: params[:user][:password],
        name: params[:user][:name],
        avatar_url: params[:user][:avatar_url],
        email: params[:user][:email],
        notification: params[:user][:notification],
      )
      if @user.valid?
        @token = encode_token({ user_id: @user.id })
        render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
      else
        render json: { error: "failed to create user" }, status: :not_acceptable
      end
    end
  end
end
