require 'test_helper'

class LevelsControllerTest < ActionController::TestCase
  setup do
    @level = levels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:levels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create level" do
    assert_difference('Level.count') do
      post :create, :level => { :active_date => @level.active_date, :base => @level.base, :level1 => @level.level1, :level2 => @level.level2, :level3 => @level.level3, :symbol => @level.symbol, :top => @level.top }
    end

    assert_redirected_to level_path(assigns(:level))
  end

  test "should show level" do
    get :show, :id => @level
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @level
    assert_response :success
  end

  test "should update level" do
    put :update, :id => @level, :level => { :active_date => @level.active_date, :base => @level.base, :level1 => @level.level1, :level2 => @level.level2, :level3 => @level.level3, :symbol => @level.symbol, :top => @level.top }
    assert_redirected_to level_path(assigns(:level))
  end

  test "should destroy level" do
    assert_difference('Level.count', -1) do
      delete :destroy, :id => @level
    end

    assert_redirected_to levels_path
  end
end
