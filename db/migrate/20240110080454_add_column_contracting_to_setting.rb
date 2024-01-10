class AddColumnContractingToSetting < ActiveRecord::Migration[7.0]
  def change
    add_column :settings, :agreements, :integer, null: false, default: 0
  end
end
