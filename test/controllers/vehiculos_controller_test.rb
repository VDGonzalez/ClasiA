require 'test_helper'

class VehiculosControllerTest < ActionController::TestCase
  setup do
    @vehiculo = vehiculos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vehiculos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vehiculo" do
    assert_difference('Vehiculo.count') do
      post :create, vehiculo: { agencia_id: @vehiculo.agencia_id, alta: @vehiculo.alta, anio: @vehiculo.anio, combustible: @vehiculo.combustible, comentario: @vehiculo.comentario, condicion: @vehiculo.condicion, denunciado: @vehiculo.denunciado, destacado: @vehiculo.destacado, dpto_mendoza_id: @vehiculo.dpto_mendoza_id, equipamiento: @vehiculo.equipamiento, exterior: @vehiculo.exterior, kilometraje: @vehiculo.kilometraje, marca_id: @vehiculo.marca_id, modeloCustom: @vehiculo.modeloCustom, modelo_id: @vehiculo.modelo_id, precio: @vehiculo.precio, principal: @vehiculo.principal, segmento_id: @vehiculo.segmento_id, seguridad: @vehiculo.seguridad, titulo: @vehiculo.titulo, usuario_id: @vehiculo.usuario_id }
    end

    assert_redirected_to vehiculo_path(assigns(:vehiculo))
  end

  test "should show vehiculo" do
    get :show, id: @vehiculo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vehiculo
    assert_response :success
  end

  test "should update vehiculo" do
    patch :update, id: @vehiculo, vehiculo: { agencia_id: @vehiculo.agencia_id, alta: @vehiculo.alta, anio: @vehiculo.anio, combustible: @vehiculo.combustible, comentario: @vehiculo.comentario, condicion: @vehiculo.condicion, denunciado: @vehiculo.denunciado, destacado: @vehiculo.destacado, dpto_mendoza_id: @vehiculo.dpto_mendoza_id, equipamiento: @vehiculo.equipamiento, exterior: @vehiculo.exterior, kilometraje: @vehiculo.kilometraje, marca_id: @vehiculo.marca_id, modeloCustom: @vehiculo.modeloCustom, modelo_id: @vehiculo.modelo_id, precio: @vehiculo.precio, principal: @vehiculo.principal, segmento_id: @vehiculo.segmento_id, seguridad: @vehiculo.seguridad, titulo: @vehiculo.titulo, usuario_id: @vehiculo.usuario_id }
    assert_redirected_to vehiculo_path(assigns(:vehiculo))
  end

  test "should destroy vehiculo" do
    assert_difference('Vehiculo.count', -1) do
      delete :destroy, id: @vehiculo
    end

    assert_redirected_to vehiculos_path
  end
end
