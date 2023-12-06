class User < ApplicationRecord
    extend FriendlyId
    friendly_id :name, use: :slugged
    
    devise :trackable, :database_authenticatable, :recoverable, :rememberable, :validatable, :authentication_keys => [:login]

    def login
        @login || self.cell_phone || self.email
    end

    def login=(login)
        @login = login
    end

    def self.find_for_database_authentication(warden_conditions)
        conditions = warden_conditions.dup

        if login = conditions.delete(:login)
            where(conditions.to_hash).where(["lower(cell_phone) = :value OR lower(email) = :value", { :value => login.downcase }]).first
        elsif conditions.has_key?(:cell_phone) || conditions.has_key?(:email)
            where(conditions.to_hash).first
        end
    end

end
