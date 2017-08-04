class Hq::BrandsController < Hq::ApplicationController

  before_action :get_brand, only: [:show, :edit, :update, :destroy]

  def index
    @brands = Brand.all
  end

  def new
    @brand = Brand.new
  end

  def create
    @brand = Brand.new(brand_params)

    if @brand.save
      respond_with(:hq, @brand)
    else
      render 'new'
    end
  end

  def edit
    get_brand
  end

  def update
    get_brand

    if @brand.update(brand_params)
      respond_with(:hq, @brand)
    else
      render 'edit'
    end
  end

  def destroy
    get_brand
    @brand.destroy
    redirect_to hq_brands_path
  end

  private

  def brand_params
    params.require(:brand).permit(:name)
  end

  def get_brand
    @brand = Brand.find(params[:id])
  end
end
