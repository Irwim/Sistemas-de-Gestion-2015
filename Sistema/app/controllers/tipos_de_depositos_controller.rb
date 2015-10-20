class TiposDeDepositosController < ApplicationController
  before_action :set_tipo_de_deposito, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @tipos_de_depositos = TipoDeDeposito.all
    respond_with(@tipos_de_depositos)
  end

  def show
    respond_with(@tipo_de_deposito)
  end

  def new
    @tipo_de_deposito = TipoDeDeposito.new
    respond_with(@tipo_de_deposito)
  end

  def edit
  end

  def create
    @tipo_de_deposito = TipoDeDeposito.new(tipo_de_deposito_params)
    @tipo_de_deposito.save
    respond_with(@tipo_de_deposito)
  end

  def update
    @tipo_de_deposito.update(tipo_de_deposito_params)
    respond_with(@tipo_de_deposito)
  end

  def destroy
    @tipo_de_deposito.destroy
    respond_with(@tipo_de_deposito)
  end

  private
    def set_tipo_de_deposito
      @tipo_de_deposito = TipoDeDeposito.find(params[:id])
    end

    def tipo_de_deposito_params
      params.require(:tipo_de_deposito).permit(:nombre)
    end
end
