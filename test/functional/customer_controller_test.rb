require 'test_helper'

class CustomerControllerTest < ActionController::TestCase

  def setup
    @something_always_there = customers(:one)
  end

  def teardown
    # This is run at the end of every test
    @something_always_there = nil
  end

  test "should get the index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customer)
  end

  test "should create user" do
    assert_difference('Customer.count') do
      post :create, :customer => {:name => "Bob Jones"}
    end

    #assert_redirected_to customer_path(assigns(:cutomer))
  end

  test "prove something is always here" do
    assert @something_always_there
  end

  test "basic route correct" do
    assert_routing "/customer/1", {:controller => "customer", :action => "show", :id => "1"}
  end

end
