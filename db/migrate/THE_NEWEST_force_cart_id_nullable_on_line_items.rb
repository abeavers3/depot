class ForceCartIdNullableOnLineItems < ActiveRecord::Migration[8.1]
  def up
    execute "ALTER TABLE line_items MODIFY cart_id bigint NULL"
  end

  def down
    execute "ALTER TABLE line_items MODIFY cart_id bigint NOT NULL"
  end
end
