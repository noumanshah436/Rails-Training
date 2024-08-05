class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.belongs_to :user, foreign_key: true, null: false
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end

# rails g model Post user:belongs_to title body:text    ( add null: false manually)
