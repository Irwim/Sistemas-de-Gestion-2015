class MovimientosProductosController < ApplicationController
  before_action :set_movimientos_producto, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @movimientos_productos = MovimientosProducto.all
    respond_with(@movimientos_productos)
  end

  def show
    respond_with(@movimientos_producto)
  end

  def new
    @movimientos_producto = MovimientosProducto.new
    respond_with(@movimientos_producto)
  end

  def edit
  end

  def create
    @movimientos_producto = MovimientosProducto.new(movimientos_producto_params)
    @movimientos_producto.save
    respond_with(@movimientos_producto)
  end

  def update
    @movimientos_producto.update(movimientos_producto_params)
    respond_with(@movimientos_producto)
  end

  def destroy
    @movimientos_producto.destroy
    respond_with(@movimientos_producto)
  end

  private
    def set_movimientos_producto
      @movimientos_producto = MovimientosProducto.find(params[:id])
    end

    def movimientos_producto_params
      params.require(:movimientos_producto).permit(:fecha, :cantidad_transferida)
    end
end
