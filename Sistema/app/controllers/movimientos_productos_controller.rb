class MovimientosProductosController < ApplicationController
  before_action :set_movimiento_producto, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @movimientos_productos = MovimientoProducto.all
    respond_with(@movimientos_productos)
  end

  def show
    respond_with(@movimiento_producto)
  end

  def new
    @movimiento_producto = MovimientoProducto.new
    respond_with(@movimiento_producto)
  end

  def edit
  end

  def create
    @movimiento_producto = MovimientoProducto.new(movimiento_producto_params)
    @movimiento_producto.save
    respond_with(@movimiento_producto)
  end

  def update
    @movimiento_producto.update(movimiento_producto_params)
    respond_with(@movimiento_producto)
  end

  def destroy
    @movimiento_producto.destroy
    respond_with(@movimiento_producto)
  end

  private
    def set_movimiento_producto
      @movimiento_producto = MovimientoProducto.find(params[:id])
    end

    def movimiento_producto_params
      params.require(:movimiento_producto).permit(:deposito_id, :producto_terminado_id, :tipo_de_movimiento_id, :fecha, :cantidad_transferida)
    end
end
