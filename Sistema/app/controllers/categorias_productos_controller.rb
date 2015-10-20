class CategoriasProductosController < ApplicationController
  before_action :set_categoria_producto, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @categorias_productos = CategoriaProducto.all
    respond_with(@categorias_productos)
  end

  def show
    respond_with(@categoria_producto)
  end

  def new
    @categoria_producto = CategoriaProducto.new
    respond_with(@categoria_producto)
  end

  def edit
  end

  def create
    @categoria_producto = CategoriaProducto.new(categoria_producto_params)
    @categoria_producto.save
    respond_with(@categoria_producto)
  end

  def update
    @categoria_producto.update(categoria_producto_params)
    respond_with(@categoria_producto)
  end

  def destroy
    @categoria_producto.destroy
    respond_with(@categoria_producto)
  end

  private
    def set_categoria_producto
      @categoria_producto = CategoriaProducto.find(params[:id])
    end

    def categoria_producto_params
      params.require(:categoria_producto).permit(:nombre, :descripcion)
    end
end
