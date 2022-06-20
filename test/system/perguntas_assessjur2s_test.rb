require "application_system_test_case"

class PerguntasAssessjur2sTest < ApplicationSystemTestCase
  setup do
    @perguntas_assessjur2 = perguntas_assessjur2s(:one)
  end

  test "visiting the index" do
    visit perguntas_assessjur2s_url
    assert_selector "h1", text: "Perguntas Assessjur2s"
  end

  test "creating a Perguntas assessjur2" do
    visit perguntas_assessjur2s_url
    click_on "New Perguntas Assessjur2"

    fill_in "Duvida", with: @perguntas_assessjur2.duvida
    fill_in "Email", with: @perguntas_assessjur2.email
    fill_in "Numatd", with: @perguntas_assessjur2.numatd
    fill_in "Status", with: @perguntas_assessjur2.status
    fill_in "Tel", with: @perguntas_assessjur2.tel
    fill_in "Tp duvida", with: @perguntas_assessjur2.tp_duvida
    click_on "Create Perguntas assessjur2"

    assert_text "Perguntas assessjur2 was successfully created"
    click_on "Back"
  end

  test "updating a Perguntas assessjur2" do
    visit perguntas_assessjur2s_url
    click_on "Edit", match: :first

    fill_in "Duvida", with: @perguntas_assessjur2.duvida
    fill_in "Email", with: @perguntas_assessjur2.email
    fill_in "Numatd", with: @perguntas_assessjur2.numatd
    fill_in "Status", with: @perguntas_assessjur2.status
    fill_in "Tel", with: @perguntas_assessjur2.tel
    fill_in "Tp duvida", with: @perguntas_assessjur2.tp_duvida
    click_on "Update Perguntas assessjur2"

    assert_text "Perguntas assessjur2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Perguntas assessjur2" do
    visit perguntas_assessjur2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Perguntas assessjur2 was successfully destroyed"
  end
end
