class MarcasController < ApplicationController
  before_action :set_marca, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @marcas = Marca.all
    respond_with(@marcas)
  end

  def show
    respond_with(@marca)
  end

  def new
    @marca = Marca.new
    respond_with(@marca)
  end

  def edit
  end

  def create
    @marca = Marca.new(marca_params)
    @marca.save
    respond_with(@marca)
  end

  def update
    @marca.update(marca_params)
    respond_with(@marca)
  end

  def destroy
    @marca.destroy
    respond_with(@marca)
  end

  private
    def set_marca
      @marca = Marca.find(params[:id])
    end

    def marca_params
      params.require(:marca).permit(:nombre, :codigo)
    end
end
