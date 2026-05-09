require "test_helper"

class CartTest < ActiveSupport::TestCase
  test "can add a product" do
    cart = Cart.create
    product = products(:one)

    line_item = cart.add_product(product)
    line_item.save!

    assert_equal 1, cart.line_items.count
    assert_equal product, cart.line_items.first.product
    assert_equal 1, cart.line_items.first.quantity
  end

  test "adding same product increases quantity" do
    cart = Cart.create
    product = products(:one)

    cart.add_product(product).save!
    cart.add_product(product).save!

    assert_equal 1, cart.line_items.count
    assert_equal 2, cart.line_items.first.quantity
  end

  test "cart total price adds line item totals" do
    cart = Cart.create
    product = products(:one)

    item = cart.add_product(product)
    item.quantity = 2
    item.save!

    assert_equal product.price * 2, cart.total_price
  end
end
