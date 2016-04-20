class BusinessesController < ApplicationController
  def new
    @business = Business.new
  end

  def create
    @business = Business.new(business_params)
      if @business.save
        session[:business_id] = @business.id
        redirect_to businesses_profile_path
      else
        redirect_to businesses_new_path, :flash => {:error => @business.errors.full_messages}
      end
  end

  def find
    @business = Business.find_by(email: params[:email].downcase)
    if @business && @business.authenticate(params[:password])
      session[:business_id] = @business.id
      redirect_to businesses_profile_path
    else
      redirect_to businesses_login_path, :flash => {:error => "Make sure all required fields are filled in."}
    end
  end

  def login
  end

  def show
    @user = User.find_by(id: current_user.id)
    @near_biz = Business.near([session[:latitude], session[:longitude]], 10)
    @businesses = Business.all
  end

  def profile
    @business = Business.find_by(id: current_business.id)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def business_params
    business_params = params.require(:business).permit(:business_name, :email, :password, :street_address, :city, :state, :url, :avatar, :zip_code)
  end
end
