require 'test_helper'

class TypeOfRemindersControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => TypeOfReminder.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    TypeOfReminder.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    TypeOfReminder.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to type_of_reminder_url(assigns(:type_of_reminder))
  end

  def test_edit
    get :edit, :id => TypeOfReminder.first
    assert_template 'edit'
  end

  def test_update_invalid
    TypeOfReminder.any_instance.stubs(:valid?).returns(false)
    put :update, :id => TypeOfReminder.first
    assert_template 'edit'
  end

  def test_update_valid
    TypeOfReminder.any_instance.stubs(:valid?).returns(true)
    put :update, :id => TypeOfReminder.first
    assert_redirected_to type_of_reminder_url(assigns(:type_of_reminder))
  end

  def test_destroy
    type_of_reminder = TypeOfReminder.first
    delete :destroy, :id => type_of_reminder
    assert_redirected_to type_of_reminders_url
    assert !TypeOfReminder.exists?(type_of_reminder.id)
  end
end
