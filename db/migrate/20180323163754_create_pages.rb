# frozen_string_literal: true

class CreatePages < ActiveRecord::Migration[5.1]
  def change
    create_table :pages do |t|
      t.jsonb :title, default: {}, null: false
      t.string :slug
      t.jsonb :content, default: {}
      t.integer :position

      t.timestamps
    end
  end
end
