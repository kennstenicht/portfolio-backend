module Api::V1
  class ProjectResource < BaseResource
    attributes :title, :slug, :subtitle, :excerpt, :meta_info, :content, :position, :visible

    has_many :custom_fields

    filter :slug
  end
end
