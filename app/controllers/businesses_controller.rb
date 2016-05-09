class BusinessesController < ApplicationController
  def new
    @business = Business.new
  end

  def create
    @business = Business.new(business_params)
      if @business.save
        params[:tags].split(" ").each do |z|
          Tag.create(business_id: @business.id, tag_name: z)
        end
        session[:business_id] = @business.id
    # binding.pry
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
      redirect_to businesses_new_path, :flash => {:error => "Make sure all required fields are filled in."}
    end
  end

  def show
    @user = User.find_by(id: current_user.id)
    @near_biz = Business.near([session[:latitude], session[:longitude]], 10)
    @businesses = Business.all
    # binding.pry
  end

  def profile
    @business = Business.find_by(id: current_business.id)
  end

  def edit
  end

  def events
  end

  def social
  end

   def update
    # binding.pry
        @business = Business.find_by(id: current_business.id)
    if @business.update_attributes(business_params)
      redirect_to businesses_profile_path, :flash => {:error => "Edit Successful"}
    else redirect_to businesses_profile_path, :flash => {:error => "Edit UnSuccessful"}
    end    
  end

  def destroy
  end

  private

  def business_params
    business_params = params.require(:business).permit(:business_name, :email, :password, :street_address, :city, :state, :url, :avatar, :zip_code)
  end
end
