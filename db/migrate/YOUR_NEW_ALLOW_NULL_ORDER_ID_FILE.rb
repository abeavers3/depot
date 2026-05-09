class AllowNullOrderIdOnLineItems < ActiveRecord::Migration[8.1]
  def change
    change_column_null :line_items, :order_id, true
  end
end
