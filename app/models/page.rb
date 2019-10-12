class Page < ApplicationRecord
  # Translation
  extend Mobility
  translates :title,
             :content, fallbacks: { de: :en, en: :de }

  # Relationship
  has_many :custom_fields

    # Validations
    validates :title, presence: true
end
