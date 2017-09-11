require 'test_helper'

class RedesocialsControllerTest < ActionController::TestCase
  setup do
    @redesocial = redesocials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:redesocials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create redesocial" do
    assert_difference('Redesocial.count') do
      post :create, redesocial: { email: @redesocial.email, idade: @redesocial.idade, nome: @redesocial.nome, telefone: @redesocial.telefone }
    end

    assert_redirected_to redesocial_path(assigns(:redesocial))
  end

  test "should show redesocial" do
    get :show, id: @redesocial
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @redesocial
    assert_response :success
  end

  test "should update redesocial" do
    patch :update, id: @redesocial, redesocial: { email: @redesocial.email, idade: @redesocial.idade, nome: @redesocial.nome, telefone: @redesocial.telefone }
    assert_redirected_to redesocial_path(assigns(:redesocial))
  end

  test "should destroy redesocial" do
    assert_difference('Redesocial.count', -1) do
      delete :destroy, id: @redesocial
    end

    assert_redirected_to redesocials_path
  end
end
