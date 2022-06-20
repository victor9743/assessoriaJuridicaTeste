require "test_helper"

class PerguntasAssessjursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @perguntas_assessjur = perguntas_assessjurs(:one)
  end

  test "should get index" do
    get perguntas_assessjurs_url
    assert_response :success
  end

  test "should get new" do
    get new_perguntas_assessjur_url
    assert_response :success
  end

  test "should create perguntas_assessjur" do
    assert_difference('PerguntasAssessjur.count') do
      post perguntas_assessjurs_url, params: { perguntas_assessjur: { duvida: @perguntas_assessjur.duvida, email: @perguntas_assessjur.email, numatd: @perguntas_assessjur.numatd, status: @perguntas_assessjur.status, tel: @perguntas_assessjur.tel, tp_duvida: @perguntas_assessjur.tp_duvida } }
    end

    assert_redirected_to perguntas_assessjur_url(PerguntasAssessjur.last)
  end

  test "should show perguntas_assessjur" do
    get perguntas_assessjur_url(@perguntas_assessjur)
    assert_response :success
  end

  test "should get edit" do
    get edit_perguntas_assessjur_url(@perguntas_assessjur)
    assert_response :success
  end

  test "should update perguntas_assessjur" do
    patch perguntas_assessjur_url(@perguntas_assessjur), params: { perguntas_assessjur: { duvida: @perguntas_assessjur.duvida, email: @perguntas_assessjur.email, numatd: @perguntas_assessjur.numatd, status: @perguntas_assessjur.status, tel: @perguntas_assessjur.tel, tp_duvida: @perguntas_assessjur.tp_duvida } }
    assert_redirected_to perguntas_assessjur_url(@perguntas_assessjur)
  end

  test "should destroy perguntas_assessjur" do
    assert_difference('PerguntasAssessjur.count', -1) do
      delete perguntas_assessjur_url(@perguntas_assessjur)
    end

    assert_redirected_to perguntas_assessjurs_url
  end
end
