class CreateMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :members do |t|
      t.string :company_name
      t.string :company_nif
      t.string :company_address
      t.string :company_cell_phone
      t.string :company_email
      t.string :company_area
      t.string :company_logo
      t.belongs_to :pack, null: false, foreign_key: true
      t.string :name
      t.string :email
      t.string :cell_phone
      t.boolean :status, null: false, default: true
      t.string :slug

      t.timestamps
    end
  end
end
