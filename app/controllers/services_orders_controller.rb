class ServicesOrdersController < ApplicationController
  before_action :set_services_order, only: [:show, :update, :destroy]

  # GET /services_orders
  def index
    @services_orders = ServicesOrder.all

    render json: @services_orders
  end

  # GET /services_orders/1
  def show
    render json: @services_order
  end

  # POST /services_orders
  def create
    @services_order = ServicesOrder.generate(services_order_params)

    if @services_order.persisted?
      render json: @services_order, status: :created, location: @services_order
    else
      render json: @services_order.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /services_orders/1
  def update
    if @services_order.update(services_order_params)
      render json: @services_order
    else
      render json: @services_order.errors, status: :unprocessable_entity
    end
  end

  # DELETE /services_orders/1
  def destroy
    @services_order.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_services_order
      @services_order = ServicesOrder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def services_order_params
      params.require(:services_order).permit(:email, :description)
    end
end
