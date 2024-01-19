class Product < ApplicationRecord
    extend FriendlyId
    friendly_id :id, use: :slugged
    
    has_one_attached :picture, dependent: :destroy
    has_rich_text :description

end
