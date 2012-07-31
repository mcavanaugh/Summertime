require 'test_helper'

class SymbolInfosControllerTest < ActionController::TestCase
  setup do
    @symbol_info = symbol_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:symbol_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create symbol_info" do
    assert_difference('SymbolInfo.count') do
      post :create, :symbol_info => { :company_name => @symbol_info.company_name, :exchange => @symbol_info.exchange, :symbol => @symbol_info.symbol }
    end

    assert_redirected_to symbol_info_path(assigns(:symbol_info))
  end

  test "should show symbol_info" do
    get :show, :id => @symbol_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @symbol_info
    assert_response :success
  end

  test "should update symbol_info" do
    put :update, :id => @symbol_info, :symbol_info => { :company_name => @symbol_info.company_name, :exchange => @symbol_info.exchange, :symbol => @symbol_info.symbol }
    assert_redirected_to symbol_info_path(assigns(:symbol_info))
  end

  test "should destroy symbol_info" do
    assert_difference('SymbolInfo.count', -1) do
      delete :destroy, :id => @symbol_info
    end

    assert_redirected_to symbol_infos_path
  end
end
