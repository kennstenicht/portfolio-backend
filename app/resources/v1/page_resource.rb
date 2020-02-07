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

    has_many :custom_fields

    filter :slug
  end
end
