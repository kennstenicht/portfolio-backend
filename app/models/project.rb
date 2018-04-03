class Project < ApplicationRecord
  # Translation
  extend Mobility
  translates :title,                          type: :string, fallbacks: { de: :en, en: :de }
  translates :subtitle,                       type: :string
  translates :excerpt, :meta_info, :content,  type: :text

  # Relationship
  has_many :custom_fields
end
