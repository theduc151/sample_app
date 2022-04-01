class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :comment_content
      t.references :user, foreign_key: true
      t.references :micropost, foreign_key: true
      t.integer :parent_id

      t.timestamps
    end
  end
end
