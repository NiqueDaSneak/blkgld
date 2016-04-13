class BusinessesController < ApplicationController
  def new
  end

  def create
  end

  def login
  end

  def show
    binding.pry
    @user = User.find_by(id: current_user.id)
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
