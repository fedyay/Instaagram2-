class PagesController < ApplicationController
  def root

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
