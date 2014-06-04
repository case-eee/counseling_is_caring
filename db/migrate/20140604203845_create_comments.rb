class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :commentable_id
      t.string :commentable_type
      t.integer :commentor_id
      t.text :body

      t.timestamps
    end
  end
end
