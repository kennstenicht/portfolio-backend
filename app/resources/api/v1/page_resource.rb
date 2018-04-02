module Api::V1
  class PageResource < BaseResource
    attributes :title, :slug, :content, :position


    filter :slug
  end
end
