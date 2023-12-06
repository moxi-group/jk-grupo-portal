class Board < ApplicationRecord
    extend FriendlyId
    friendly_id :id, use: :slugged
    
    has_many :members
end
