class Project < ApplicationRecord
  # Translation
  extend Mobility
  translates :title,
             :subtitle,
             :excerpt,
             :meta_info,
             :content, fallbacks: { en: :de }

  # Relationship
  has_many :custom_fields

  # Validations
  validates :title,
            :subtitle, presence: true
end
