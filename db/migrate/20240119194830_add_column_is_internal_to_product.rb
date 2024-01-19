class AddColumnIsInternalToProduct < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :is_internal, :boolean, null: false, default: true
  end
end
