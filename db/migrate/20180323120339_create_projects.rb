# frozen_string_literal: true

class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.jsonb :content, default: {}
      t.jsonb :excerpt, default: {}
      t.jsonb :facts, default: {}
      t.jsonb :meta_description, default: {}
      t.jsonb :meta_title, default: {}
      t.integer :position
      t.jsonb :role, default: {}
      t.string :slug
      t.jsonb :subtitle, default: {}, null: false
      t.jsonb :title, default: {}, null: false
      t.boolean :visible

      t.timestamps
    end
  end
end
