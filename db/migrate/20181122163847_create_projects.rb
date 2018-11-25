class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.integer :category_id
      t.integer :owner
      t.datetime :created
      t.integer :downloadsCount
      t.string :name
      t.text :description
      t.string :thumbnail
      t.string :website

      t.timestamps
    end
  end
end
