class AddOrderToLineItems < ActiveRecord::Migration[8.1]
  def change
    unless column_exists?(:line_items, :order_id)
      add_reference :line_items, :order, foreign_key: true
    end
  end
end
