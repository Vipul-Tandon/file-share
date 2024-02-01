class UsersController < ApplicationController
    before_action :authorize_request, except: :create
    
    def create
        @user = User.new(user_params)
        if @user.save
            render json: @user, status: :created
        else
            render json: { errors: @user.errors.full_messages },
                status: :unprocessable_entity
        end
    end


    def index
        @users = User.all
        render json: @users, each_serializer: UserSerializer, status: :ok
    end
    
    def show
        @user = User.find_by(id: params[:id])
        render json: @user, serializer: UserSerializer, show_posts: true, status: :ok
    end


    def destroy
        @user = User.find_by(id: params[:id])
        @user.destroy
        head :no_content
    end


    private
    def user_params
        params.permit( :username, :email, :password, :password_confirmation )
    end

end
