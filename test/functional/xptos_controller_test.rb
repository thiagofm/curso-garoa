require 'test_helper'

class XptosControllerTest < ActionController::TestCase
  setup do
    @xpto = xptos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:xptos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create xpto" do
    assert_difference('Xpto.count') do
      post :create, xpto: { a: @xpto.a }
    end

    assert_redirected_to xpto_path(assigns(:xpto))
  end

  test "should show xpto" do
    get :show, id: @xpto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @xpto
    assert_response :success
  end

  test "should update xpto" do
    put :update, id: @xpto, xpto: { a: @xpto.a }
    assert_redirected_to xpto_path(assigns(:xpto))
  end

  test "should destroy xpto" do
    assert_difference('Xpto.count', -1) do
      delete :destroy, id: @xpto
    end

    assert_redirected_to xptos_path
  end
end
