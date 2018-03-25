module Api::V1
  class ProjectResource < BaseResource
    attributes :title, :slug, :subtitle, :position, :visible, :excerpt, :meta_info
  end
end
