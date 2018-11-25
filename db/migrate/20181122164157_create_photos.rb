class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.integer :project_id
      t.string :bucket
      t.string :fullPath
      t.string :name
      t.string :url

      t.timestamps
    end
  end
end
