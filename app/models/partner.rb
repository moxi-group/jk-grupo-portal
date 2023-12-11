class Partner < ApplicationRecord
    has_one_attached :picture, dependent: :destroy

end
