class CustomField < ApplicationRecord
  # Translation
  extend Mobility
  translates :value, :description,     type: :text
end
