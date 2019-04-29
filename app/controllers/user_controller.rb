class UserController < ApplicationController
  def page
    @user = User.find(params[:user])
  end
end
