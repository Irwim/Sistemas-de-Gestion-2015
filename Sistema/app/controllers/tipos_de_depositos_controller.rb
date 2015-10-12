class TiposDeDepositosController < ApplicationController
  before_action :set_tipos_de_deposito, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @tipos_de_depositos = TiposDeDeposito.all
    respond_with(@tipos_de_depositos)
  end

  def show
    respond_with(@tipos_de_deposito)
  end

  def new
    @tipos_de_deposito = TiposDeDeposito.new
    respond_with(@tipos_de_deposito)
  end

  def edit
  end

  def create
    @tipos_de_deposito = TiposDeDeposito.new(tipos_de_deposito_params)
    @tipos_de_deposito.save
    respond_with(@tipos_de_deposito)
  end

  def update
    @tipos_de_deposito.update(tipos_de_deposito_params)
    respond_with(@tipos_de_deposito)
  end

  def destroy
    @tipos_de_deposito.destroy
    respond_with(@tipos_de_deposito)
  end

  private
    def set_tipos_de_deposito
      @tipos_de_deposito = TiposDeDeposito.find(params[:id])
    end

    def tipos_de_deposito_params
      params.require(:tipos_de_deposito).permit(:nombre)
    end
end
