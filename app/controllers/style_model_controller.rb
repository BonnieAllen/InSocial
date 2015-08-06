class StyleModelController < ApplicationController
  def new
    @stylemodel = current_user.posts.build
  end

  def edit
  end

  # def create
  #   @stylemodel = current_user.posts.build(post_params)

  #   if @stylemodel.save
  #     flash[:success] = "Your style models have been created!"
  #     redirect_to style_models_path
  #   else
  #     flash[:alert] = "Your new style models couldn't be created!  Please check the form."
  #     render :new
  #   end
  # end
end
