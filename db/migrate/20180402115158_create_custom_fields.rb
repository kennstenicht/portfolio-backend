class CreateCustomFields < ActiveRecord::Migration[5.1]
  def change
    create_table :custom_fields do |t|
      t.string :key
      t.jsonb :value, default: {}
      t.string :field_type
      t.jsonb :description, default: {}

      t.references :page
      t.references :project
    end
  end
end
