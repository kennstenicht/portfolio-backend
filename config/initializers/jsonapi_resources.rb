JSONAPI.configure do |config|
  config.default_processor_klass = JSONAPI::Authorization::AuthorizingProcessor
  config.exception_class_whitelist = [Pundit::NotAuthorizedError]

  config.default_paginator = :paged
  config.default_page_size = 40
  config.maximum_page_size = 100

  config.top_level_meta_include_record_count = true
  config.top_level_meta_record_count_key = :record_count
  config.top_level_meta_include_page_count = true
  config.top_level_meta_page_count_key = :page_count

  config.raise_if_parameters_not_allowed = false
end

module JSONAPI
  class LinkBuilder
    def formatted_module_path_from_class(klass)
      scopes = module_scopes_from_class(klass)

      if scopes.empty?
        "/#{I18n.locale}/"
      else
        "/#{I18n.locale}/#{scopes.map { |scope| format_route(scope.to_s.underscore) }.join('/')}/"
      end
    end
  end
end

JSONAPI::Authorization.configure do |config|
  config.pundit_user = ->(context){ context }
end
