class ForceOrderIdNullableOnLineItems < ActiveRecord::Migration[8.1]
  def up
    execute "ALTER TABLE line_items MODIFY order_id bigint NULL"
  end

  def down
    execute "ALTER TABLE line_items MODIFY order_id bigint NOT NULL"
  end
end
