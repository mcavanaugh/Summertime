require 'test_helper'

class DailyPricesControllerTest < ActionController::TestCase
  setup do
    @daily_price = daily_prices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daily_prices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daily_price" do
    assert_difference('DailyPrice.count') do
      post :create, :daily_price => { :closing => @daily_price.closing, :high => @daily_price.high, :low => @daily_price.low, :opening => @daily_price.opening, :symbol => @daily_price.symbol, :volume => @daily_price.volume }
    end

    assert_redirected_to daily_price_path(assigns(:daily_price))
  end

  test "should show daily_price" do
    get :show, :id => @daily_price
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @daily_price
    assert_response :success
  end

  test "should update daily_price" do
    put :update, :id => @daily_price, :daily_price => { :closing => @daily_price.closing, :high => @daily_price.high, :low => @daily_price.low, :opening => @daily_price.opening, :symbol => @daily_price.symbol, :volume => @daily_price.volume }
    assert_redirected_to daily_price_path(assigns(:daily_price))
  end

  test "should destroy daily_price" do
    assert_difference('DailyPrice.count', -1) do
      delete :destroy, :id => @daily_price
    end

    assert_redirected_to daily_prices_path
  end
end
