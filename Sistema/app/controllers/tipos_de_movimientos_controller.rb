class TiposDeMovimientosController < ApplicationController
  before_action :set_tipos_de_movimiento, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @tipos_de_movimientos = TiposDeMovimiento.all
    respond_with(@tipos_de_movimientos)
  end

  def show
    respond_with(@tipos_de_movimiento)
  end

  def new
    @tipos_de_movimiento = TiposDeMovimiento.new
    respond_with(@tipos_de_movimiento)
  end

  def edit
  end

  def create
    @tipos_de_movimiento = TiposDeMovimiento.new(tipos_de_movimiento_params)
    @tipos_de_movimiento.save
    respond_with(@tipos_de_movimiento)
  end

  def update
    @tipos_de_movimiento.update(tipos_de_movimiento_params)
    respond_with(@tipos_de_movimiento)
  end

  def destroy
    @tipos_de_movimiento.destroy
    respond_with(@tipos_de_movimiento)
  end

  private
    def set_tipos_de_movimiento
      @tipos_de_movimiento = TiposDeMovimiento.find(params[:id])
    end

    def tipos_de_movimiento_params
      params.require(:tipos_de_movimiento).permit(:nombre, :descripcion)
    end
end
