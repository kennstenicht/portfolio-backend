class Page < ApplicationRecord
  # Translation
  extend Mobility
  translates :title,          type: :string, fallbacks: { de: :en, en: :de }
  translates :content,        type: :text

  # Relationship
  has_many :custom_fields
end
