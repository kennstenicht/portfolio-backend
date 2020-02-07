# frozen_string_literal: true

module V1
  class PageResource < BaseResource
    attributes :content,
               :position,
               :slug,
               :title

    has_many :custom_fields

    filter :slug
  end
end
