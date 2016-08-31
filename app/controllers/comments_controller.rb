class CommentsController < ApplicationController
  def create
    params.permit!
    @image = Image.find(params[:image_id])
    @comment = @image.comments.create(params[:comment])

    respond_to do |format|
      format.html {redirect_to root_path}
      format.js {}
    end
  end

  def destroy
    @image = Image.find(params[:image_id])
    @comment = Comment.find(params[:id])
    @comment.destroy

    respond_to do |format|
      # format.html { redirect_to @article }
      format.json { head :no_content }
      format.js   {}
    end
  end

end
