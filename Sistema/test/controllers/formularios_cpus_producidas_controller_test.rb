require 'test_helper'

class FormulariosCpusProducidasControllerTest < ActionController::TestCase
  setup do
    @formularios_cpus_producida = formularios_cpus_producidas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:formularios_cpus_producidas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create formularios_cpus_producida" do
    assert_difference('FormulariosCpusProducida.count') do
      post :create, formularios_cpus_producida: { numero_de_formulario: @formularios_cpus_producida.numero_de_formulario, orden: @formularios_cpus_producida.orden }
    end

    assert_redirected_to formularios_cpus_producida_path(assigns(:formularios_cpus_producida))
  end

  test "should show formularios_cpus_producida" do
    get :show, id: @formularios_cpus_producida
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @formularios_cpus_producida
    assert_response :success
  end

  test "should update formularios_cpus_producida" do
    patch :update, id: @formularios_cpus_producida, formularios_cpus_producida: { numero_de_formulario: @formularios_cpus_producida.numero_de_formulario, orden: @formularios_cpus_producida.orden }
    assert_redirected_to formularios_cpus_producida_path(assigns(:formularios_cpus_producida))
  end

  test "should destroy formularios_cpus_producida" do
    assert_difference('FormulariosCpusProducida.count', -1) do
      delete :destroy, id: @formularios_cpus_producida
    end

    assert_redirected_to formularios_cpus_producidas_path
  end
end
