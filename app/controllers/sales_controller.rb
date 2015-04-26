class SalesController < ApplicationController
  before_action :initialize_sale, only: [:new, :create]
  before_action :load_sale, only: [:edit, :update, :destroy]

  def index
    @sales = Sale.all
  end

  def create
    if @sale.update_attributes(sale_params)
      redirect_to sales_path
    else
      render 'new'
    end
  end

  def update
    if @sale.update_attributes(sale_params)
      redirect_to sales_path
    else
      render 'edit'
    end
  end

  def destroy
    @sale.destroy
    redirect_to sales_path
  end

  private

  def initialize_sale
    @sale = Sale.new
  end

  def load_sale
    @sale = Sale.find(params[:id])
  end

  def sale_params
    params.require(:sale).permit(:seller_id, :product_id, :quantity)
  end
end
