class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :project_id
      t.text :body
      t.integer :owner
      t.date :created

      t.timestamps
    end
  end
end
