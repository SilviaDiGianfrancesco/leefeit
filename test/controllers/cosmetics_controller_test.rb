require 'test_helper'

class CosmeticsControllerTest < ActionController::TestCase
  setup do
    @cosmetic = cosmetics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cosmetics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cosmetic" do
    assert_difference('Cosmetic.count') do
      post :create, cosmetic: { Product: @cosmetic.Product, phone: @cosmetic.phone, website: @cosmetic.website }
    end

    assert_redirected_to cosmetic_path(assigns(:cosmetic))
  end

  test "should show cosmetic" do
    get :show, id: @cosmetic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cosmetic
    assert_response :success
  end

  test "should update cosmetic" do
    patch :update, id: @cosmetic, cosmetic: { Product: @cosmetic.Product, phone: @cosmetic.phone, website: @cosmetic.website }
    assert_redirected_to cosmetic_path(assigns(:cosmetic))
  end

  test "should destroy cosmetic" do
    assert_difference('Cosmetic.count', -1) do
      delete :destroy, id: @cosmetic
    end

    assert_redirected_to cosmetics_path
  end
end
