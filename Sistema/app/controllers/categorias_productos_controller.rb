class CategoriasProductosController < ApplicationController
  before_action :set_categorias_producto, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @categorias_productos = CategoriasProducto.all
    respond_with(@categorias_productos)
  end

  def show
    respond_with(@categorias_producto)
  end

  def new
    @categorias_producto = CategoriasProducto.new
    respond_with(@categorias_producto)
  end

  def edit
  end

  def create
    @categorias_producto = CategoriasProducto.new(categorias_producto_params)
    @categorias_producto.save
    respond_with(@categorias_producto)
  end

  def update
    @categorias_producto.update(categorias_producto_params)
    respond_with(@categorias_producto)
  end

  def destroy
    @categorias_producto.destroy
    respond_with(@categorias_producto)
  end

  private
    def set_categorias_producto
      @categorias_producto = CategoriasProducto.find(params[:id])
    end

    def categorias_producto_params
      params.require(:categorias_producto).permit(:nombre, :descripcion)
    end
end
