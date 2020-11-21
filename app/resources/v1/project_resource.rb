# frozen_string_literal: true

module V1
  class ProjectResource < BaseResource
    attributes :content,
               :excerpt,
               :facts,
               :meta_title,
               :meta_description,
               :position,
               :role,
               :slug,
               :subtitle,
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
