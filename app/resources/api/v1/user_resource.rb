module Api::V1
  class UserResource < BaseResource
    attributes :email, :name
    key_type :uuid
  end
end
