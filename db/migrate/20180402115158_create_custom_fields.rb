class CreateCustomFields < ActiveRecord::Migration[5.1]
  def change
    create_table :custom_fields do |t|
      t.string :key
      t.string :value
      t.string :field_type
      t.text :description

      t.references :page
      t.references :project
    end
  end
end
