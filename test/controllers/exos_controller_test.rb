require "test_helper"

class ExosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @exo = exos(:one)
  end

  test "should get index" do
    get exos_url, as: :json
    assert_response :success
  end

  test "should create exo" do
    assert_difference("Exo.count") do
      post exos_url, params: { exo: { body: @exo.body } }, as: :json
    end

    assert_response :created
  end

  test "should show exo" do
    get exo_url(@exo), as: :json
    assert_response :success
  end

  test "should update exo" do
    patch exo_url(@exo), params: { exo: { body: @exo.body } }, as: :json
    assert_response :success
  end

  test "should destroy exo" do
    assert_difference("Exo.count", -1) do
      delete exo_url(@exo), as: :json
    end

    assert_response :no_content
  end
end
