class Project < ApplicationRecord
  extend Mobility
  translates :title,                          type: :string, fallbacks: { de: :en, en: :de }
  translates :subtitle,                       type: :string
  translates :excerpt, :meta_info, :content,  type: :text
end
