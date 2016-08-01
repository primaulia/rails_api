class Api::UsersController < ApplicationController
  def index
    @users = User.all

    respond_to do |format|
      format.html { render :index }
      format.json
    end
  end

  def show
    @user = User.find_by( params[:id] )

    respond_to do |format|
      format.html { render :show }
      format.json
    end

  end
end
