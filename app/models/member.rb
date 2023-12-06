class Member < ApplicationRecord
  extend FriendlyId
  friendly_id :id, use: :slugged
  
  belongs_to :pack
end
