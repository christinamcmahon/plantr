module Api::V1
  class UsersController < ApplicationController
    before_action :find_user, only: [:update, :edit, :show, :destroy]
    # skip_before_action :authorized, only: [:create, :profile]

    def profile
      render json: { user: UserSerializer.new(current_user) }, status: :accepted
    end

    def index
      users = User.all
      render json: users
    end

    def show
      render json: @user
    end

    def new
      @user = User.new
    end

    def create
      @user = User.new(
        username: params[:user][:username],
        password: params[:user][:password],
        name: params[:user][:name],
        avatar_url: params[:user][:avatar_url],
        email: params[:user][:email],
        notification: params[:user][:notification],
      )
      if @user.valid? && @user.save
        @token = encode_token({ user_id: @user.id })
        render json: { user: @user, jwt: @token }, status: :created
      else
        render json: { error: "failed to create user" }, status: :not_acceptable
      end
    end

    private

    def find_user
      @user = User.find(params[:id])
    end
  end
end
