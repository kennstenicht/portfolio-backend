# frozen_string_literal: true

class CustomField < ApplicationRecord
  # Translation
  extend Mobility
  translates :value, :description
end
