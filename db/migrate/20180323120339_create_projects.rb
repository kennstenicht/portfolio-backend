class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.jsonb :title, default: {}, null: false
      t.jsonb :subtitle, default: {}, null: false
      t.string :slug
      t.jsonb :excerpt, default: {}
      t.jsonb :meta_info, default: {}
      t.jsonb :content, default: {}
      t.boolean :visible
      t.integer :position

      t.timestamps
    end
  end
end
