module Api::V1
  class PageResource < BaseResource
    primary_key :slug

    attributes :title, :slug, :content, :position

    # Allow UUIDs or slugs as IDs
    def self.verify_key(key, context = nil)
      key && String(key)
    end
  end
end
