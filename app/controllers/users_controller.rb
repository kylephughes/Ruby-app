class UsersController < ApplicationController

  def index
    @user = User.find(session[:user_id])
  end

  def new
    @user = User.new 
  end

  def login
  end

  def logout
    session[:user_id] = nil
    flash[:success] = "Log out Sucessfull!"
    redirect_to root_url
  end

  def process_login
    login = User.find_by_login(params[:login])
      if login && login.authenticate(params[:password])
        session[:user_id] = login.id
        redirect_to users_path
      else
        flash[:error] = "Invalid Login"
        render "login"
      end
  end

  def create
    @user= User.new(params[:user])
      if @user.save
        session[:user_id]=@user.id
        redirect_to root_url
      else
        render "new"
      end
 end

end
