require 'test_helper'

class ContactsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Contact.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Contact.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Contact.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to contact_url(assigns(:contact))
  end
  
  def test_edit
    get :edit, :id => Contact.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Contact.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Contact.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Contact.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Contact.first
    assert_redirected_to contact_url(assigns(:contact))
  end
  
  def test_destroy
    contact = Contact.first
    delete :destroy, :id => contact
    assert_redirected_to contacts_url
    assert !Contact.exists?(contact.id)
  end
end
