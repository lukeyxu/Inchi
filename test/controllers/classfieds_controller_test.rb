require 'test_helper'

class ClassfiedsControllerTest < ActionController::TestCase
  setup do
    @classfied = classfieds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:classfieds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create classfied" do
    assert_difference('Classfied.count') do
      post :create, classfied: { category: @classfied.category, description: @classfied.description, email: @classfied.email, phone: @classfied.phone, title: @classfied.title, wechat: @classfied.wechat }
    end

    assert_redirected_to classfied_path(assigns(:classfied))
  end

  test "should show classfied" do
    get :show, id: @classfied
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @classfied
    assert_response :success
  end

  test "should update classfied" do
    patch :update, id: @classfied, classfied: { category: @classfied.category, description: @classfied.description, email: @classfied.email, phone: @classfied.phone, title: @classfied.title, wechat: @classfied.wechat }
    assert_redirected_to classfied_path(assigns(:classfied))
  end

  test "should destroy classfied" do
    assert_difference('Classfied.count', -1) do
      delete :destroy, id: @classfied
    end

    assert_redirected_to classfieds_path
  end
end
