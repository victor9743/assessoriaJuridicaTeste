require "test_helper"

class PerguntasAssessjur2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @perguntas_assessjur2 = perguntas_assessjur2s(:one)
  end

  test "should get index" do
    get perguntas_assessjur2s_url
    assert_response :success
  end

  test "should get new" do
    get new_perguntas_assessjur2_url
    assert_response :success
  end

  test "should create perguntas_assessjur2" do
    assert_difference('PerguntasAssessjur2.count') do
      post perguntas_assessjur2s_url, params: { perguntas_assessjur2: { duvida: @perguntas_assessjur2.duvida, email: @perguntas_assessjur2.email, numatd: @perguntas_assessjur2.numatd, status: @perguntas_assessjur2.status, tel: @perguntas_assessjur2.tel, tp_duvida: @perguntas_assessjur2.tp_duvida } }
    end

    assert_redirected_to perguntas_assessjur2_url(PerguntasAssessjur2.last)
  end

  test "should show perguntas_assessjur2" do
    get perguntas_assessjur2_url(@perguntas_assessjur2)
    assert_response :success
  end

  test "should get edit" do
    get edit_perguntas_assessjur2_url(@perguntas_assessjur2)
    assert_response :success
  end

  test "should update perguntas_assessjur2" do
    patch perguntas_assessjur2_url(@perguntas_assessjur2), params: { perguntas_assessjur2: { duvida: @perguntas_assessjur2.duvida, email: @perguntas_assessjur2.email, numatd: @perguntas_assessjur2.numatd, status: @perguntas_assessjur2.status, tel: @perguntas_assessjur2.tel, tp_duvida: @perguntas_assessjur2.tp_duvida } }
    assert_redirected_to perguntas_assessjur2_url(@perguntas_assessjur2)
  end

  test "should destroy perguntas_assessjur2" do
    assert_difference('PerguntasAssessjur2.count', -1) do
      delete perguntas_assessjur2_url(@perguntas_assessjur2)
    end

    assert_redirected_to perguntas_assessjur2s_url
  end
end
