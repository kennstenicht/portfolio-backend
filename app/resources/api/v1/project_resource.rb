module Api::V1
  class ProjectResource < BaseResource
    attributes :title, :slug, :subtitle, :excerpt, :meta_info, :content, :position, :visible

    filter :slug
  end
end
