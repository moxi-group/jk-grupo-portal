class Member < ApplicationRecord
  extend FriendlyId
  friendly_id :id, use: :slugged
  
  belongs_to :pack

  has_rich_text :description
  has_one_attached :company_logo, dependent: :destroy


end
