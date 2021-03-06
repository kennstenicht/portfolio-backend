# frozen_string_literal: true

module V1
  class CustomFieldResource < BaseResource
    attributes :key, :value, :field_type, :description
  end
end
