class UploadsController < ApplicationController
 before_action :set_upload, only: [:show, :edit, :update, :destroy]

  def index
    @uploads = Upload.all
  end

  def show
  end

  def new
    @upload = Upload.new
    @post = Post.find(params[:post_id])
  end

  def edit
  end

  def create
   # puts params[:post_id]
   #Returns all uploads with a particular post_id
    @upload = Upload.create(upload_params.merge(post_id: params[:post_id]))
    # respond_to do |format|
      #    puts "Hello\n\n"
    # @upload = Upload.create(upload_params)
    # @post = Post.find(params[:post_id])
    #@upload = @post.uploads.create(upload_params)
    #redirect_to posts_path
      # format.html do
      #   puts "Hello"
      #   redirect_to root_url
    #   end
    # end
  end

  def update
    respond_to do |format|
      if @upload.update(upload_params)
        format.html { redirect_to @upload, notice: 'StyleModel was successfully updated.' }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  def destroy
    @upload.destroy
    respond_to do |format|
      format.html { redirect_to uploads_url }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    def set_upload
      @upload = Upload.find(params[:id])
    end

    def upload_params
      params.require(:upload).permit(:uploaded_file, :image_url, :post_id)
    end
end

