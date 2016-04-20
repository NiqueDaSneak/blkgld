class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def login
  end

  def find
    @user = User.find_by(email: params[:email].downcase)
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      session[:latitude] = params[:latitude]
      session[:longitude] = params[:longitude]
      redirect_to businesses_show_path
    else
      redirect_to users_login_path, :flash => {:error => "Password/Email Combination Incorrect"}
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      session[:latitude] = params[:user][:latitude]
      session[:longitude] = params[:user][:longitude]
      redirect_to businesses_show_path
    else
      redirect_to users_new_path, :flash => {:error => "Make sure all required fields are filled in."}
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def user_params
    user_params = params.require(:user).permit(:username, :email, :password)
  end

end
