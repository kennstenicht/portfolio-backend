module Api::V1
  class PageResource < BaseResource
    attributes :title, :slug, :content, :position
    primary_key :slug

  end
end
