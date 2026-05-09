require "test_helper"

class OrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order = orders(:one)
    @product = products(:one)
  end

  test "should get index" do
    get orders_url
    assert_response :success
  end

  test "should get new" do
    post line_items_url, params: { product_id: @product.id }

    get new_order_url

    assert_response :success
  end

  test "should create order" do
    post line_items_url, params: { product_id: @product.id }

    assert_difference("Order.count") do
      post orders_url, params: {
        order: {
          name: "Andrew Beaverson",
          address: "1846 S Main St",
          email: "andrew@example.com",
          pay_type: "Check"
        }
      }
    end

    assert_redirected_to root_url
  end

  test "should show order" do
    get order_url(@order)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_url(@order)
    assert_response :success
  end

  test "should update order" do
    patch order_url(@order), params: {
      order: {
        name: @order.name,
        address: @order.address,
        email: @order.email,
        pay_type: "Credit card"
      }
    }

    assert_redirected_to order_url(@order)
  end

  test "should destroy order" do
    assert_difference("Order.count", -1) do
      delete order_url(@order)
    end

    assert_redirected_to orders_url
  end
end
