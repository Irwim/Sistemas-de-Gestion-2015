class ComponentesController < ApplicationController
  before_action :set_componente, only: [:show, :edit, :update, :destroy]

  respond_to :html
  def index
    @componentes = Componente.all
    respond_with(@componentes)
  end

  def show
    respond_with(@componente)
  end

  def new
    @componente = Componente.new
    respond_with(@componente)
  end

  def edit


  end

  def create
    @componente = Componente.new(componente_params)
    @componente.save
    redirect_to componentes_path
  end

  def update
    @componente.update(componente_params)
    respond_with(@componente)
  end

  def destroy
    @componente.destroy
    respond_to do |format|
      format.html { redirect_to componentes_url, notice: 'Nuevo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  
    
private
    def set_componente
      @componente = Componente.find(params[:id])
    end
    def componente_params
      params.require(:componente).permit(:id_componente, :nombre, :ppp, :descripcion, :cantidad_minima, :codigo_interno)
    end
end
