class Api::UsersController < ApplicationController
  def index
    sleep 5
    @users = User.all

    respond_to do |format|
      format.html { render :index }
      format.json
    end
  end

  def show
    sleep 5
    @user = User.find_by( params[:id] )

    respond_to do |format|
      format.html { render :show }
      format.json
    end

  end
end
