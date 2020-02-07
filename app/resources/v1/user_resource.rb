# frozen_string_literal: true

module V1
  class UserResource < BaseResource
    attributes :email,
               :name
  end
end
