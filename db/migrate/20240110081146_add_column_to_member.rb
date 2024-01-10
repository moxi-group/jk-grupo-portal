class AddColumnToMember < ActiveRecord::Migration[7.0]
  def change
    add_column :members, :facebook_link, :string
    add_column :members, :instagram_link, :string
    add_column :members, :linkedin_link, :string
  end
end
