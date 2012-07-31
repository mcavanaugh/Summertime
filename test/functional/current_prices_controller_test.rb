require 'test_helper'

class CurrentPricesControllerTest < ActionController::TestCase
  setup do
    @current_price = current_prices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:current_prices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create current_price" do
    assert_difference('CurrentPrice.count') do
      post :create, :current_price => { :price => @current_price.price, :symbol => @current_price.symbol }
    end

    assert_redirected_to current_price_path(assigns(:current_price))
  end

  test "should show current_price" do
    get :show, :id => @current_price
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @current_price
    assert_response :success
  end

  test "should update current_price" do
    put :update, :id => @current_price, :current_price => { :price => @current_price.price, :symbol => @current_price.symbol }
    assert_redirected_to current_price_path(assigns(:current_price))
  end

  test "should destroy current_price" do
    assert_difference('CurrentPrice.count', -1) do
      delete :destroy, :id => @current_price
    end

    assert_redirected_to current_prices_path
  end
end
