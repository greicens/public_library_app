class LibraryUsersController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @libraries = @user.libraries
  end

  def create
    @library = Library.find(params[:library_id])
    @library.users << current_user
    if @library.users
      flash[:notice] = "Thanks for joining the #{@library.name}!"
    else
      flash[:error] = "Not able to join, try again "
    end
    redirect_to current_user
  end
end
