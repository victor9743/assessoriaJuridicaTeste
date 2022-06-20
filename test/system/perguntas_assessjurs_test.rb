require "application_system_test_case"

class PerguntasAssessjursTest < ApplicationSystemTestCase
  setup do
    @perguntas_assessjur = perguntas_assessjurs(:one)
  end

  test "visiting the index" do
    visit perguntas_assessjurs_url
    assert_selector "h1", text: "Perguntas Assessjurs"
  end

  test "creating a Perguntas assessjur" do
    visit perguntas_assessjurs_url
    click_on "New Perguntas Assessjur"

    fill_in "Duvida", with: @perguntas_assessjur.duvida
    fill_in "Email", with: @perguntas_assessjur.email
    fill_in "Numatd", with: @perguntas_assessjur.numatd
    fill_in "Status", with: @perguntas_assessjur.status
    fill_in "Tel", with: @perguntas_assessjur.tel
    fill_in "Tp duvida", with: @perguntas_assessjur.tp_duvida
    click_on "Create Perguntas assessjur"

    assert_text "Perguntas assessjur was successfully created"
    click_on "Back"
  end

  test "updating a Perguntas assessjur" do
    visit perguntas_assessjurs_url
    click_on "Edit", match: :first

    fill_in "Duvida", with: @perguntas_assessjur.duvida
    fill_in "Email", with: @perguntas_assessjur.email
    fill_in "Numatd", with: @perguntas_assessjur.numatd
    fill_in "Status", with: @perguntas_assessjur.status
    fill_in "Tel", with: @perguntas_assessjur.tel
    fill_in "Tp duvida", with: @perguntas_assessjur.tp_duvida
    click_on "Update Perguntas assessjur"

    assert_text "Perguntas assessjur was successfully updated"
    click_on "Back"
  end

  test "destroying a Perguntas assessjur" do
    visit perguntas_assessjurs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Perguntas assessjur was successfully destroyed"
  end
end
