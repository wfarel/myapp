require 'test_helper'

class FotosEmpresasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fotos_empresa = fotos_empresas(:one)
  end

  test "should get index" do
    get fotos_empresas_url
    assert_response :success
  end

  test "should get new" do
    get new_fotos_empresa_url
    assert_response :success
  end

  test "should create fotos_empresa" do
    assert_difference('FotosEmpresa.count') do
      post fotos_empresas_url, params: { fotos_empresa: { estado: @fotos_empresa.estado, image: @fotos_empresa.image, name: @fotos_empresa.name } }
    end

    assert_redirected_to fotos_empresa_url(FotosEmpresa.last)
  end

  test "should show fotos_empresa" do
    get fotos_empresa_url(@fotos_empresa)
    assert_response :success
  end

  test "should get edit" do
    get edit_fotos_empresa_url(@fotos_empresa)
    assert_response :success
  end

  test "should update fotos_empresa" do
    patch fotos_empresa_url(@fotos_empresa), params: { fotos_empresa: { estado: @fotos_empresa.estado, image: @fotos_empresa.image, name: @fotos_empresa.name } }
    assert_redirected_to fotos_empresa_url(@fotos_empresa)
  end

  test "should destroy fotos_empresa" do
    assert_difference('FotosEmpresa.count', -1) do
      delete fotos_empresa_url(@fotos_empresa)
    end

    assert_redirected_to fotos_empresas_url
  end
end
