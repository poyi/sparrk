class UsersController < ApplicationController

	def show 
		@user = User.find_by_username(params[:id])
      	@project = @user.projects

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @projects }
    end
	end
end
