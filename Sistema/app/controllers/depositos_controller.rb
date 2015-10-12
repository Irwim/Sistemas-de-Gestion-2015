class DepositosController < ApplicationController
  before_action :set_deposito, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @depositos = Deposito.all
    respond_with(@depositos)
  end

  def show
    respond_with(@deposito)
  end

  def new
    @deposito = Deposito.new
    respond_with(@deposito)
  end

  def edit
  end

  def create
    @deposito = Deposito.new(deposito_params)
    @deposito.save
    respond_with(@deposito)
  end

  def update
    @deposito.update(deposito_params)
    respond_with(@deposito)
  end

  def destroy
    @deposito.destroy
    respond_with(@deposito)
  end

  private
    def set_deposito
      @deposito = Deposito.find(params[:id])
    end

    def deposito_params
      params.require(:deposito).permit(:descripcion)
    end
end
