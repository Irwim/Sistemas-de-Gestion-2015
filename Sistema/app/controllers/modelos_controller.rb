class ModelosController < ApplicationController
  before_action :set_modelo, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @modelos = Modelo.all
    respond_with(@modelos)
  end

  def show
    respond_with(@modelo)
  end

  def new
    @modelo = Modelo.new
    respond_with(@modelo)
  end

  def edit
  end

  def create
    @modelo = Modelo.new(modelo_params)
    @modelo.save
    respond_with(@modelo)
  end

  def update
    @modelo.update(modelo_params)
    respond_with(@modelo)
  end

  def destroy
    @modelo.destroy
    respond_with(@modelo)
  end

  private
    def set_modelo
      @modelo = Modelo.find(params[:id])
    end

    def modelo_params
      params.require(:modelo).permit(:nombre)
    end
end
