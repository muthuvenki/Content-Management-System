require 'test_helper'

class CattabsControllerTest < ActionController::TestCase
  setup do
    @cattab = cattabs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cattabs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cattab" do
    assert_difference('Cattab.count') do
      post :create, cattab: { : @cattab., : @cattab., content: @cattab.content, name: @cattab.name }
    end

    assert_redirected_to cattab_path(assigns(:cattab))
  end

  test "should show cattab" do
    get :show, id: @cattab
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cattab
    assert_response :success
  end

  test "should update cattab" do
    patch :update, id: @cattab, cattab: { : @cattab., : @cattab., content: @cattab.content, name: @cattab.name }
    assert_redirected_to cattab_path(assigns(:cattab))
  end

  test "should destroy cattab" do
    assert_difference('Cattab.count', -1) do
      delete :destroy, id: @cattab
    end

    assert_redirected_to cattabs_path
  end
end
