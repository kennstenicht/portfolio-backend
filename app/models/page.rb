# frozen_string_literal: true

class Page < ApplicationRecord
  # Translation
  extend Mobility
  translates :content,
             :meta_title,
             :meta_description,
             :title, fallbacks: { de: :en, en: :de }

  # Relationship
  has_many :custom_fields

  # Validations
  validates :title, presence: true
end
