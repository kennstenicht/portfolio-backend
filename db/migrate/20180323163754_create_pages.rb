# frozen_string_literal: true

class CreatePages < ActiveRecord::Migration[5.1]
  def change
    create_table :pages do |t|
      t.jsonb :content, default: {}
      t.jsonb :meta_title, default: {}
      t.jsonb :meta_description, default: {}
      t.integer :position
      t.string :slug
      t.jsonb :title, default: {}, null: false
      t.boolean :visible

      t.timestamps
    end
  end
end
