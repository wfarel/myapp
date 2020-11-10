require "application_system_test_case"

class OfertaTest < ApplicationSystemTestCase
  setup do
    @ofertum = oferta(:one)
  end

  test "visiting the index" do
    visit oferta_url
    assert_selector "h1", text: "Oferta"
  end

  test "creating a Ofertum" do
    visit oferta_url
    click_on "New Ofertum"

    fill_in "Codigo", with: @ofertum.codigo
    fill_in "Descripcion", with: @ofertum.descripcion
    fill_in "Imagen", with: @ofertum.imagen
    fill_in "Precio", with: @ofertum.precio
    fill_in "Titulo", with: @ofertum.titulo
    click_on "Create Ofertum"

    assert_text "Ofertum was successfully created"
    click_on "Back"
  end

  test "updating a Ofertum" do
    visit oferta_url
    click_on "Edit", match: :first

    fill_in "Codigo", with: @ofertum.codigo
    fill_in "Descripcion", with: @ofertum.descripcion
    fill_in "Imagen", with: @ofertum.imagen
    fill_in "Precio", with: @ofertum.precio
    fill_in "Titulo", with: @ofertum.titulo
    click_on "Update Ofertum"

    assert_text "Ofertum was successfully updated"
    click_on "Back"
  end

  test "destroying a Ofertum" do
    visit oferta_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ofertum was successfully destroyed"
  end
end
