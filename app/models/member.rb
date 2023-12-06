class Member < ApplicationRecord
  extend FriendlyId
  friendly_id :id, use: :slugged
  
  belongs_to :pack

  has_rich_text :description


end
