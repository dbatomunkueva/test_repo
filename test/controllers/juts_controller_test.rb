require "test_helper"

class JutsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jut = juts(:one)
  end

  test "should get index" do
    get juts_url
    assert_response :success
  end

  test "should get new" do
    get new_jut_url
    assert_response :success
  end

  test "should create jut" do
    assert_difference("Jut.count") do
      post juts_url, params: { jut: { content: @jut.content, user_id: @jut.user_id } }
    end

    assert_redirected_to jut_url(Jut.last)
  end

  test "should show jut" do
    get jut_url(@jut)
    assert_response :success
  end

  test "should get edit" do
    get edit_jut_url(@jut)
    assert_response :success
  end

  test "should update jut" do
    patch jut_url(@jut), params: { jut: { content: @jut.content, user_id: @jut.user_id } }
    assert_redirected_to jut_url(@jut)
  end

  test "should destroy jut" do
    assert_difference("Jut.count", -1) do
      delete jut_url(@jut)
    end

    assert_redirected_to juts_url
  end
end
