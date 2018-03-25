class User < ApplicationRecord
  has_secure_password

  def self.from_token_request request
    # Returns a valid user, `nil` or raise `Knock.not_found_exception_class_name`
    # e.g.
    email = request.params["email"]
    self.find_by email: email
  end
end
