JSONAPI.configure do |config|
  config.resource_key_type = :string

  # Authorization
  config.default_processor_klass = JSONAPI::Authorization::AuthorizingProcessor
  config.exception_class_whitelist = [Pundit::NotAuthorizedError]
end
