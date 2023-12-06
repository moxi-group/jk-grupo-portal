class CreatePacks < ActiveRecord::Migration[7.0]
  def change
    create_table :packs do |t|
      t.string :name
      t.decimal :price, null: false, default: 0
      t.text :description
      t.string :slug

      t.timestamps
    end

    Pack.create(name: 'PRATA', price: 50000)
    Pack.create(name: 'OURO', price: 75000)

  end
end
