# frozen_string_literal: true

module V1
  class ProjectResource < BaseResource
    attributes :content,
               :excerpt,
               :meta_info,
               :position,
               :slug,
               :subtitle,
               :title,
               :visible

    has_many :custom_fields

    filter :slug
  end
end
