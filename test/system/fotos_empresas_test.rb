require "application_system_test_case"

class FotosEmpresasTest < ApplicationSystemTestCase
  setup do
    @fotos_empresa = fotos_empresas(:one)
  end

  test "visiting the index" do
    visit fotos_empresas_url
    assert_selector "h1", text: "Fotos Empresas"
  end

  test "creating a Fotos empresa" do
    visit fotos_empresas_url
    click_on "New Fotos Empresa"

    check "Estado" if @fotos_empresa.estado
    fill_in "Image", with: @fotos_empresa.image
    fill_in "Name", with: @fotos_empresa.name
    click_on "Create Fotos empresa"

    assert_text "Fotos empresa was successfully created"
    click_on "Back"
  end

  test "updating a Fotos empresa" do
    visit fotos_empresas_url
    click_on "Edit", match: :first

    check "Estado" if @fotos_empresa.estado
    fill_in "Image", with: @fotos_empresa.image
    fill_in "Name", with: @fotos_empresa.name
    click_on "Update Fotos empresa"

    assert_text "Fotos empresa was successfully updated"
    click_on "Back"
  end

  test "destroying a Fotos empresa" do
    visit fotos_empresas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fotos empresa was successfully destroyed"
  end
end
