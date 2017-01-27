class UsersController < ApplicationController
  def index
    @users = User.count
  end
end
