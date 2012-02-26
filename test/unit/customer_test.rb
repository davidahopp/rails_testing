require 'test_helper'

class CustomerTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end

  test "customer must have a name" do
    customer = Customer.new
    assert !customer.save
  end

  test "customer must have a name 2" do
    customer = Customer.new
    assert !customer.save, "Customer does not have a name"
  end

  test "there is an error" do
    test_something
    assert true
  end

end
