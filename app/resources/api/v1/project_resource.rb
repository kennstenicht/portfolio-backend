module Api::V1
  class ProjectResource < JSONAPI::Resource
    attributes :title, :slug, :subtitle, :position, :visible, :excerpt, :meta_info
  end
end
