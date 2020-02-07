# frozen_string_literal: true

module V1
  class PageResource < BaseResource
    attributes :content,
               :meta_title,
               :meta_description,
               :position,
               :slug,
               :title,
               :visible

    # Relations
    has_many :custom_fields

    # Filters
    filter :slug
    filter :visible

    # Sorting
    def self.default_sort
      [
        { field: 'position', direction: :asc },
        { field: 'title', direction: :asc }
      ]
    end
  end
end
