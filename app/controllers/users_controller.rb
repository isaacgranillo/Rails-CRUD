class UsersController < ApplicationController
	before_action :set_user, only: [:show, :edit, :destroy]
	def index
	 	@users = User.all.order('id DESC')
	end

	def new
	end

	def create
		User.create(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password: params[:password])
		redirect_to '/'
	end

	def show
	end

	def edit
	end

	def update
		User.find(params[:id]).update(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password: params[:password])
		redirect_to '/'
	end

	def destroy 
		@user.destroy
		redirect_to '/'
	end

	private
    def set_user
      @user = User.find(params[:id])
    end
end
