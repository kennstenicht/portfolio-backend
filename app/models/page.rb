class Page < ApplicationRecord
  extend Mobility
  translates :title,          type: :string, fallbacks: { de: :en, en: :de }
  translates :content,        type: :text
end
