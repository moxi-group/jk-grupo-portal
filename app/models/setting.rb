class Setting < ApplicationRecord
    extend FriendlyId
    friendly_id :id, use: :slugged
    
end
