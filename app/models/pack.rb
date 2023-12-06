class Pack < ApplicationRecord
    extend FriendlyId
    friendly_id :id, use: :slugged
    
end
