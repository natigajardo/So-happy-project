class ProductInstancesController < ApplicationController
  before_action :set_product_instance, only: [:show, :edit, :update, :destroy]

  # GET /product_instances
  # GET /product_instances.json
  def index
    @product_instances = ProductInstance.all
  end

  # GET /product_instances/1
  # GET /product_instances/1.json
  def show
  end

  # GET /product_instances/new
  def new
    @product_instance = ProductInstance.new
    @products = Product.pluck :name, :id, :sku
  end

  # GET /product_instances/1/edit
  def edit
    @products = Product.pluck :name, :id, :sku
  end

  # POST /product_instances
  # POST /product_instances.json
  def create
    @product_instance = ProductInstance.new(product_instance_params)

    respond_to do |format|
      if @product_instance.save
        format.html { redirect_to @product_instance, notice: 'Product instance was successfully created.' }
        format.json { render :show, status: :created, location: @product_instance }
      else
        format.html { render :new }
        format.json { render json: @product_instance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_instances/1
  # PATCH/PUT /product_instances/1.json
  def update
    respond_to do |format|
      if @product_instance.update(product_instance_params)
        format.html { redirect_to @product_instance, notice: 'Product instance was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_instance }
      else
        format.html { render :edit }
        format.json { render json: @product_instance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_instances/1
  # DELETE /product_instances/1.json
  def destroy
    @product_instance.destroy
    respond_to do |format|
      format.html { redirect_to product_instances_url, notice: 'Product instance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_instance
      @product_instance = ProductInstance.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_instance_params
      params.require(:product_instance).permit(:price, :size, :sold, :product_id)
    end
end
