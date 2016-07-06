class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:edit, :update, :destroy]
  before_filter :authorize_admin, only: [:create, :edit, :update, :destroy]

  # GET /products
  # GET /products.json
  def index
    if Rails.env.development?
      if params[:q]
        search_term = params[:q]
        @products = Product.where("name LIKE ?", "%#{search_term}%")
      else
        @products = Product.all
      end
    else
      if params[:q]
        search_term = params[:q]
        @products = Product.where("name ilike ?", "%#{search_term}%")
      else
        @products = Product.all
      end
    end
  end


  # GET /products/1
  # GET /products/1.json
  def show
    @comments = @product.comments.order("created_at DESC").paginate(:page =>params[:page], :per_page=>3)
  end

  # GET /products/new
  def new
    @product = Product.new
    authorize! :new, @product
  end

  # GET /products/1/edit
  def edit
    session[:return_to] ||= request.referer
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, :success => 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to session.delete(:return_to), :info=>'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_path, :danger=>'Product was successfully destroyed.' }
      # format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :description, :image_url, :colour, :price)
    end

    def authorize_admin
      return unless !current_user.admin?
      redirect_to root_path, :alert => "Only admins can create new or update products"
    end
end
