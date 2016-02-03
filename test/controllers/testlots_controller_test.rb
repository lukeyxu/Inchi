require 'test_helper'

class TestlotsControllerTest < ActionController::TestCase
  setup do
    @testlot = testlots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:testlots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create testlot" do
    assert_difference('Testlot.count') do
      post :create, testlot: { description: @testlot.description, name: @testlot.name, status: @testlot.status }
    end

    assert_redirected_to testlot_path(assigns(:testlot))
  end

  test "should show testlot" do
    get :show, id: @testlot
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @testlot
    assert_response :success
  end

  test "should update testlot" do
    patch :update, id: @testlot, testlot: { description: @testlot.description, name: @testlot.name, status: @testlot.status }
    assert_redirected_to testlot_path(assigns(:testlot))
  end

  test "should destroy testlot" do
    assert_difference('Testlot.count', -1) do
      delete :destroy, id: @testlot
    end

    assert_redirected_to testlots_path
  end
end
