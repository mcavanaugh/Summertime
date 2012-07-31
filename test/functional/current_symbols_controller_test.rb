require 'test_helper'

class CurrentSymbolsControllerTest < ActionController::TestCase
  setup do
    @current_symbol = current_symbols(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:current_symbols)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create current_symbol" do
    assert_difference('CurrentSymbol.count') do
      post :create, :current_symbol => { :active_date => @current_symbol.active_date, :symbol => @current_symbol.symbol }
    end

    assert_redirected_to current_symbol_path(assigns(:current_symbol))
  end

  test "should show current_symbol" do
    get :show, :id => @current_symbol
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @current_symbol
    assert_response :success
  end

  test "should update current_symbol" do
    put :update, :id => @current_symbol, :current_symbol => { :active_date => @current_symbol.active_date, :symbol => @current_symbol.symbol }
    assert_redirected_to current_symbol_path(assigns(:current_symbol))
  end

  test "should destroy current_symbol" do
    assert_difference('CurrentSymbol.count', -1) do
      delete :destroy, :id => @current_symbol
    end

    assert_redirected_to current_symbols_path
  end
end
