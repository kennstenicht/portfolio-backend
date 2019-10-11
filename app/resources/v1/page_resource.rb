module V1
  class PageResource < BaseResource
    attributes :title, :slug, :content, :position

    has_many :custom_fields

    filter :slug
  end
end
