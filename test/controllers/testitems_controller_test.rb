require 'test_helper'

class TestitemsControllerTest < ActionController::TestCase
  setup do
    @testitem = testitems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:testitems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create testitem" do
    assert_difference('Testitem.count') do
      post :create, testitem: { description: @testitem.description, name: @testitem.name }
    end

    assert_redirected_to testitem_path(assigns(:testitem))
  end

  test "should show testitem" do
    get :show, id: @testitem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @testitem
    assert_response :success
  end

  test "should update testitem" do
    patch :update, id: @testitem, testitem: { description: @testitem.description, name: @testitem.name }
    assert_redirected_to testitem_path(assigns(:testitem))
  end

  test "should destroy testitem" do
    assert_difference('Testitem.count', -1) do
      delete :destroy, id: @testitem
    end

    assert_redirected_to testitems_path
  end
end
