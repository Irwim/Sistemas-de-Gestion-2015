class TiposDeMovimientosController < ApplicationController
  before_action :set_tipo_de_movimiento, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @tipos_de_movimientos = TipoDeMovimiento.all
    respond_with(@tipos_de_movimientos)
  end

  def show
    respond_with(@tipo_de_movimiento)
  end

  def new
    @tipo_de_movimiento = TipoDeMovimiento.new
    respond_with(@tipo_de_movimiento)
  end

  def edit
  end

  def create
    @tipo_de_movimiento = TipoDeMovimiento.new(tipo_de_movimiento_params)
    @tipo_de_movimiento.save
    respond_with(@tipo_de_movimiento)
  end

  def update
    @tipo_de_movimiento.update(tipo_de_movimiento_params)
    respond_with(@tipo_de_movimiento)
  end

  def destroy
    @tipo_de_movimiento.destroy
    respond_with(@tipo_de_movimiento)
  end

  private
    def set_tipo_de_movimiento
      @tipo_de_movimiento = TipoDeMovimiento.find(params[:id])
    end

    def tipo_de_movimiento_params
      params.require(:tipo_de_movimiento).permit(:nombre, :descripcion)
    end
end
