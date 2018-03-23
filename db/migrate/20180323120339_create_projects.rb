class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :slug
      t.string :subtitle
      t.string :excerpt
      t.string :meta_info
      t.boolean :visible
      t.integer :position

      t.timestamps
    end
  end
end
