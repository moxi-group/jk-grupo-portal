class ContactForm < ApplicationRecord
    extend FriendlyId
    friendly_id :name, use: :slugged
end
