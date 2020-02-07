# frozen_string_literal: true

module V1
  class ProjectResource < BaseResource
    attributes :content,
               :excerpt,
               :facts,
               :meta_title,
               :meta_description,
               :position,
               :slug,
               :subtitle,
               :title,
               :visible

    has_many :custom_fields

    filter :slug
  end
end
