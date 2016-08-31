class ImagesController < ApplicationController
  def new
  	@image = Image.new
  end

  def create
    @image = Image.new(image_params)
    @image.user = current_user

    if @image.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy

    redirect_to profile_path
  end

  private

  def image_params
  	params.require(:image).permit(:description, :user_id, :photo)
  end
end
