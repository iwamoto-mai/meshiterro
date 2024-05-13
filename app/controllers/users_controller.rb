class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @post_images = @user.post_images.page(params[:page])
  end

  def edit
    @user =  User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    @user.update(User_params)
    redirect_to  User_path(user.id)
  end
  
  private

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end
end
