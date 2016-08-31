class PagesController < ApplicationController
  def root

  end

  def show
  	@images = current_user.images
  end
end
