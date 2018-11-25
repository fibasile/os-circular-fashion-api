class CreateAttachments < ActiveRecord::Migration[5.2]
  def change
    create_table :attachments do |t|
      t.integer :project_id
      t.string :bucket
      t.string :contentType
      t.string :fullPath
      t.string :name
      t.string :size
      t.string :status
      t.integer :uid
      t.string :url

      t.timestamps
    end
  end
end
