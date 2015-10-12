class CategoriasComponentesController < ApplicationController
  before_action :set_categorias_componente, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @categorias_componentes = CategoriasComponente.all
    respond_with(@categorias_componentes)
  end

  def show
    respond_with(@categorias_componente)
  end

  def new
    @categorias_componente = CategoriasComponente.new
    respond_with(@categorias_componente)
  end

  def edit
  end

  def create
    @categorias_componente = CategoriasComponente.new(categorias_componente_params)
    @categorias_componente.save
    respond_with(@categorias_componente)
  end

  def update
    @categorias_componente.update(categorias_componente_params)
    respond_with(@categorias_componente)
  end

  def destroy
    @categorias_componente.destroy
    respond_with(@categorias_componente)
  end

  private
    def set_categorias_componente
      @categorias_componente = CategoriasComponente.find(params[:id])
    end

    def categorias_componente_params
      params.require(:categorias_componente).permit(:nombre, :descripcion)
    end
end
