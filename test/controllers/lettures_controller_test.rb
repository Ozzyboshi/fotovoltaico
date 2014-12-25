require 'test_helper'

class LetturesControllerTest < ActionController::TestCase
  setup do
    @letture = lettures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lettures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create letture" do
    assert_difference('Letture.count') do
      post :create, letture: { consumofascia1: @letture.consumofascia1, consumofascia1periodoprecedente: @letture.consumofascia1periodoprecedente, consumofascia2: @letture.consumofascia2, consumofascia2periodoprecedente: @letture.consumofascia2periodoprecedente, consumofascia3: @letture.consumofascia3, consumofascia3periodoprecedente: @letture.consumofascia3periodoprecedente, data: @letture.data, immissionefascia1: @letture.immissionefascia1, immissionefascia2: @letture.immissionefascia2, immissionefascia3: @letture.immissionefascia3, produzionefascia1: @letture.produzionefascia1, produzionefascia2: @letture.produzionefascia2, produzionefascia3: @letture.produzionefascia3 }
    end

    assert_redirected_to letture_path(assigns(:letture))
  end

  test "should show letture" do
    get :show, id: @letture
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @letture
    assert_response :success
  end

  test "should update letture" do
    patch :update, id: @letture, letture: { consumofascia1: @letture.consumofascia1, consumofascia1periodoprecedente: @letture.consumofascia1periodoprecedente, consumofascia2: @letture.consumofascia2, consumofascia2periodoprecedente: @letture.consumofascia2periodoprecedente, consumofascia3: @letture.consumofascia3, consumofascia3periodoprecedente: @letture.consumofascia3periodoprecedente, data: @letture.data, immissionefascia1: @letture.immissionefascia1, immissionefascia2: @letture.immissionefascia2, immissionefascia3: @letture.immissionefascia3, produzionefascia1: @letture.produzionefascia1, produzionefascia2: @letture.produzionefascia2, produzionefascia3: @letture.produzionefascia3 }
    assert_redirected_to letture_path(assigns(:letture))
  end

  test "should destroy letture" do
    assert_difference('Letture.count', -1) do
      delete :destroy, id: @letture
    end

    assert_redirected_to lettures_path
  end
end
