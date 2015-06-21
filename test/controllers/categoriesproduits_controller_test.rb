require 'test_helper'

class CategoriesproduitsControllerTest < ActionController::TestCase
  setup do
    @categoriesproduit = categoriesproduits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:categoriesproduits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create categoriesproduit" do
    assert_difference('Categoriesproduit.count') do
      post :create, categoriesproduit: { nomcategorie: @categoriesproduit.nomcategorie }
    end

    assert_redirected_to categoriesproduit_path(assigns(:categoriesproduit))
  end

  test "should show categoriesproduit" do
    get :show, id: @categoriesproduit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @categoriesproduit
    assert_response :success
  end

  test "should update categoriesproduit" do
    patch :update, id: @categoriesproduit, categoriesproduit: { nomcategorie: @categoriesproduit.nomcategorie }
    assert_redirected_to categoriesproduit_path(assigns(:categoriesproduit))
  end

  test "should destroy categoriesproduit" do
    assert_difference('Categoriesproduit.count', -1) do
      delete :destroy, id: @categoriesproduit
    end

    assert_redirected_to categoriesproduits_path
  end
end
