class UsersController < ApplicationController
	before_action :set_group, only: [:index, :create, :edit, :update]
	def index
		@users = @group.users
	end

	def create
		@group.users.build(user_params)
		@group.save
		redirect_to group_users_path(@group)
	end

	def edit
		
	end

	def update
		
	end

	private
	def set_group
		@group = Group.find(params[:group_id])
	end

	def user_params
		params.require(:user).permit(:name)
		
	end
end
