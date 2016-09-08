class PagesController < ApplicationController
  before_action :block
  def root
    @pics = []
    current_user.friends.each do |f|
      f.images.each do |img|
        @pics.push(img)
      end
    end
    unless @pics == nil
      @pics = @pics.sort! { |a,b| b.id <=> a.id }
    end
  end

  def show
  	@images = current_user.images.order(id: :desc)
  end

  def friendship
  	@frnd = User.find(params[:q])
  	current_user.friend_request(@frnd)

  	redirect_to profile_path
  end

  def accept
    @frnd = User.find(params[:format])
    current_user.accept_request(@frnd)

    redirect_to profile_path
  end

  def decline
    @frnd = User.find(params[:format])
    current_user.decline_request(@frnd)

    redirect_to profile_path
  end

  def like
    @img = Image.find(params[:format])
    @img.liked_by current_user
    redirect_to root_path
  end

  private

  def block
    if current_user == nil
      flash[:danger] = "Please log in"
      redirect_to new_user_session_path
    end
  end
end
