require 'test_helper'

class CustomerControllerTest < ActionController::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
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

    assert_redirected_to customer_path(assigns(:cutomer))
  end
end
