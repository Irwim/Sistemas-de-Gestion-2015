require 'test_helper'

class FormulariosCpusProducidasDetallesControllerTest < ActionController::TestCase
  setup do
    @formularios_cpus_producidas_detalle = formularios_cpus_producidas_detalles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:formularios_cpus_producidas_detalles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create formularios_cpus_producidas_detalle" do
    assert_difference('FormulariosCpusProducidasDetalle.count') do
      post :create, formularios_cpus_producidas_detalle: { cantidad_solicitada: @formularios_cpus_producidas_detalle.cantidad_solicitada, cantidad_terminada: @formularios_cpus_producidas_detalle.cantidad_terminada }
    end

    assert_redirected_to formularios_cpus_producidas_detalle_path(assigns(:formularios_cpus_producidas_detalle))
  end

  test "should show formularios_cpus_producidas_detalle" do
    get :show, id: @formularios_cpus_producidas_detalle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @formularios_cpus_producidas_detalle
    assert_response :success
  end

  test "should update formularios_cpus_producidas_detalle" do
    patch :update, id: @formularios_cpus_producidas_detalle, formularios_cpus_producidas_detalle: { cantidad_solicitada: @formularios_cpus_producidas_detalle.cantidad_solicitada, cantidad_terminada: @formularios_cpus_producidas_detalle.cantidad_terminada }
    assert_redirected_to formularios_cpus_producidas_detalle_path(assigns(:formularios_cpus_producidas_detalle))
  end

  test "should destroy formularios_cpus_producidas_detalle" do
    assert_difference('FormulariosCpusProducidasDetalle.count', -1) do
      delete :destroy, id: @formularios_cpus_producidas_detalle
    end

    assert_redirected_to formularios_cpus_producidas_detalles_path
  end
end
