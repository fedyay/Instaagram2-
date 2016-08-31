class PagesController < ApplicationController
  def root
    @pics = []
    current_user.friends.each do |f|
      @pics << f.images.to_a 
    end
    @pics = @pics.to_a
  end

  def show
  	@images = current_user.images
  end

  def friendship
  	@frnd = User.find(params[:q])
  	current_user.friend_request(@frnd)

  	redirect_to profile_path
  end
end
