require "application_system_test_case"

class InfosTest < ApplicationSystemTestCase
  setup do
    @info = infos(:one)
  end

  test "visiting the index" do
    visit infos_url
    assert_selector "h1", text: "Infos"
  end

  test "creating a Info" do
    visit infos_url
    click_on "New Info"

    fill_in "Bairro", with: @info.bairro
    fill_in "Cidade", with: @info.cidade
    fill_in "Endereco", with: @info.endereco
    fill_in "Nome", with: @info.nome
    fill_in "Numero", with: @info.numero
    fill_in "Perfil", with: @info.perfil_id
    fill_in "Usuario", with: @info.usuario_id
    click_on "Create Info"

    assert_text "Info was successfully created"
    click_on "Back"
  end

  test "updating a Info" do
    visit infos_url
    click_on "Edit", match: :first

    fill_in "Bairro", with: @info.bairro
    fill_in "Cidade", with: @info.cidade
    fill_in "Endereco", with: @info.endereco
    fill_in "Nome", with: @info.nome
    fill_in "Numero", with: @info.numero
    fill_in "Perfil", with: @info.perfil_id
    fill_in "Usuario", with: @info.usuario_id
    click_on "Update Info"

    assert_text "Info was successfully updated"
    click_on "Back"
  end

  test "destroying a Info" do
    visit infos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Info was successfully destroyed"
  end
end
