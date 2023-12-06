class CreateBoards < ActiveRecord::Migration[7.0]
  def change
    create_table :boards do |t|
      t.string :name
      t.string :picture
      t.string :position
      t.integer :order, null: false, default: 1
      t.boolean :status, null: false, default: true
      t.string :slug

      t.timestamps
    end
  end
end
