class Hq::CategoriesController < Hq::ApplicationController
  def index
    @categories = Category.all
  end
  def new
    @category = Category.new

  end

  def create
    @category = Category.create(category_params)
    if @category.save
      respond_with(:hq,@category)
    else
      render 'new'
    end
  end
  def show
    @category = Category.find(params[:id])

  end
  def edit
    @category = Category.find(params[:id])
  end
  def update
    @category = Category.find(params[:id])

    if @category.update(category_params)
      respond_with(:hq,@category)
    else
      render 'edit'
    end

  end
  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to hq_categories_path
  end
  private
  def category_params
    params.require(:category).permit(:name)
  end

end
