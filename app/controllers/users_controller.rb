class UsersController < ApplicationController
  def index
    @users = User
    @title = 'User List'
  end
end