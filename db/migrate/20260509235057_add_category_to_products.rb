class AddCategoryToProducts < ActiveRecord::Migration[8.1]
  def up
    unless column_exists?(:products, :category_id)
      add_reference :products, :category, foreign_key: true
    else
      change_column_null :products, :category_id, true
    end
  end

  def down
    if column_exists?(:products, :category_id)
      remove_reference :products, :category, foreign_key: true
    end
  end
end
