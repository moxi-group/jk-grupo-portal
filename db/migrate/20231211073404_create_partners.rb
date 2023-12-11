class CreatePartners < ActiveRecord::Migration[7.0]
  def change
    create_table :partners do |t|
      t.string :name
      t.string :picture
      t.string :description
      t.string :slug

      t.timestamps
    end
  end
end
