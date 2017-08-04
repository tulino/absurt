class TagsController < ApplicationController


  def index
    @tags = Tag.all
  end

  def new
    @tag = Tag.new
  end

  def create
    @tag = Tag.create(tag_params)
    if @tag.save
      redirect_to @tag
    else
      render 'new'
    end
  end

  def show
    @tag = Tag.find(params[:id])

  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy
    redirect_to tags_path, notice: "Post Deleted"
  end

  private

  def tag_params
    params.require(:tag).permit(:name)
  end


end
