require 'test_helper'

class ProspectsControllerTest < ActionController::TestCase
  setup do
    @prospect = prospects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prospects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prospect" do
    assert_difference('Prospect.count') do
      post :create, prospect: { activite: @prospect.activite, adresse: @prospect.adresse, agemoyen: @prospect.agemoyen, codepostal: @prospect.codepostal, comment: @prospect.comment, date: @prospect.date, fax: @prospect.fax, faxprospection: @prospect.faxprospection, genre: @prospect.genre, habitat: @prospect.habitat, mail: @prospect.mail, mobile: @prospect.mobile, mobileprospection: @prospect.mobileprospection, nom: @prospect.nom, prenom: @prospect.prenom, site: @prospect.site, tel1: @prospect.tel1, tel1prospection: @prospect.tel1prospection, tel2: @prospect.tel2, tel2prospection: @prospect.tel2prospection, tel3: @prospect.tel3, tel3prospection: @prospect.tel3prospection, ville: @prospect.ville }
    end

    assert_redirected_to prospect_path(assigns(:prospect))
  end

  test "should show prospect" do
    get :show, id: @prospect
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prospect
    assert_response :success
  end

  test "should update prospect" do
    patch :update, id: @prospect, prospect: { activite: @prospect.activite, adresse: @prospect.adresse, agemoyen: @prospect.agemoyen, codepostal: @prospect.codepostal, comment: @prospect.comment, date: @prospect.date, fax: @prospect.fax, faxprospection: @prospect.faxprospection, genre: @prospect.genre, habitat: @prospect.habitat, mail: @prospect.mail, mobile: @prospect.mobile, mobileprospection: @prospect.mobileprospection, nom: @prospect.nom, prenom: @prospect.prenom, site: @prospect.site, tel1: @prospect.tel1, tel1prospection: @prospect.tel1prospection, tel2: @prospect.tel2, tel2prospection: @prospect.tel2prospection, tel3: @prospect.tel3, tel3prospection: @prospect.tel3prospection, ville: @prospect.ville }
    assert_redirected_to prospect_path(assigns(:prospect))
  end

  test "should destroy prospect" do
    assert_difference('Prospect.count', -1) do
      delete :destroy, id: @prospect
    end

    assert_redirected_to prospects_path
  end
end
