require 'test_helper'

class FicheprospectsControllerTest < ActionController::TestCase
  setup do
    @ficheprospect = ficheprospects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ficheprospects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ficheprospect" do
    assert_difference('Ficheprospect.count') do
      post :create, ficheprospect: { age: @ficheprospect.age, beneficerechercher: @ficheprospect.beneficerechercher, budgetcomplement: @ficheprospect.budgetcomplement, categoriecomplementconsomer: @ficheprospect.categoriecomplementconsomer, commentaireprospect: @ficheprospect.commentaireprospect, consomationcomplement: @ficheprospect.consomationcomplement, famille: @ficheprospect.famille, frequenceconsomation: @ficheprospect.frequenceconsomation, lieuachatcomplement: @ficheprospect.lieuachatcomplement, originecomplement: @ficheprospect.originecomplement, profession: @ficheprospect.profession, prospect_id: @ficheprospect.prospect_id, satisfactioneffetcomplement: @ficheprospect.satisfactioneffetcomplement }
    end

    assert_redirected_to ficheprospect_path(assigns(:ficheprospect))
  end

  test "should show ficheprospect" do
    get :show, id: @ficheprospect
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ficheprospect
    assert_response :success
  end

  test "should update ficheprospect" do
    patch :update, id: @ficheprospect, ficheprospect: { age: @ficheprospect.age, beneficerechercher: @ficheprospect.beneficerechercher, budgetcomplement: @ficheprospect.budgetcomplement, categoriecomplementconsomer: @ficheprospect.categoriecomplementconsomer, commentaireprospect: @ficheprospect.commentaireprospect, consomationcomplement: @ficheprospect.consomationcomplement, famille: @ficheprospect.famille, frequenceconsomation: @ficheprospect.frequenceconsomation, lieuachatcomplement: @ficheprospect.lieuachatcomplement, originecomplement: @ficheprospect.originecomplement, profession: @ficheprospect.profession, prospect_id: @ficheprospect.prospect_id, satisfactioneffetcomplement: @ficheprospect.satisfactioneffetcomplement }
    assert_redirected_to ficheprospect_path(assigns(:ficheprospect))
  end

  test "should destroy ficheprospect" do
    assert_difference('Ficheprospect.count', -1) do
      delete :destroy, id: @ficheprospect
    end

    assert_redirected_to ficheprospects_path
  end
end
