class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  before_create do
    self.slug = SecureRandom.uuid
  end

  def generate_slug
    SecureRandom.uuid
  end

end
