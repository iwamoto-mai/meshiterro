class PostImagesController < ApplicationController
  def new
    @post_image = PostImage.new
  end

  def index
    @post_images = PostImage.all
  end

  def create
    @post_image = PostImage.new(post_image_params)
    @post_image.user_id = current_user.id
    @post_image.save
    redirect_to post_images_path
  end
  
  def show
    @post_image = 
  end
  
   # 投稿データのストロングパラメータ
  private

  def post_image_params
    params.require(:post_image).permit(:shop_name, :image, :caption)
  end
  
end