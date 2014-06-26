class OwnersController < ApplicationController
  def new
    @owner = Owner.new
  end

  def create
    @owner = Owner.new(owner_params)
    if @owner.save
      redirect_to root_url, :notice => "Signed up!"
    else
      render 'new'
    end
  end

  private
  def owner_params
    params.require(:owner).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
end
