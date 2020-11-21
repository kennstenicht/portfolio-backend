# frozen_string_literal: true

class Project < ApplicationRecord
  # Translation
  extend Mobility
  translates :content,
             :excerpt,
             :facts,
             :meta_title,
             :meta_description,
             :role,
             :subtitle,
             :title, fallbacks: { en: :de }

  # Relationship
  has_many :custom_fields

  # Validations
  validates :title,
            :subtitle, presence: true
end
