require 'test_helper'

class AccidentsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Accident.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Accident.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Accident.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to accident_url(assigns(:accident))
  end

  def test_edit
    get :edit, :id => Accident.first
    assert_template 'edit'
  end

  def test_update_invalid
    Accident.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Accident.first
    assert_template 'edit'
  end

  def test_update_valid
    Accident.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Accident.first
    assert_redirected_to accident_url(assigns(:accident))
  end

  def test_destroy
    accident = Accident.first
    delete :destroy, :id => accident
    assert_redirected_to accidents_url
    assert !Accident.exists?(accident.id)
  end
end
