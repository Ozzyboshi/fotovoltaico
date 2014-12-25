require 'test_helper'

class PrezzisControllerTest < ActionController::TestCase
  setup do
    @prezzi = prezzis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prezzis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prezzi" do
    assert_difference('Prezzi.count') do
      post :create, prezzi: { datafinevalidita: @prezzi.datafinevalidita, datainiziovalidita: @prezzi.datainiziovalidita, prezzofascia1: @prezzi.prezzofascia1, prezzofascia2: @prezzi.prezzofascia2, prezzofascia3: @prezzi.prezzofascia3 }
    end

    assert_redirected_to prezzi_path(assigns(:prezzi))
  end

  test "should show prezzi" do
    get :show, id: @prezzi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prezzi
    assert_response :success
  end

  test "should update prezzi" do
    patch :update, id: @prezzi, prezzi: { datafinevalidita: @prezzi.datafinevalidita, datainiziovalidita: @prezzi.datainiziovalidita, prezzofascia1: @prezzi.prezzofascia1, prezzofascia2: @prezzi.prezzofascia2, prezzofascia3: @prezzi.prezzofascia3 }
    assert_redirected_to prezzi_path(assigns(:prezzi))
  end

  test "should destroy prezzi" do
    assert_difference('Prezzi.count', -1) do
      delete :destroy, id: @prezzi
    end

    assert_redirected_to prezzis_path
  end
end
