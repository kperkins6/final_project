class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.belongs_to :board, index: true, foreign_key: true
      t.attachment :document
      t.attachment :image
      t.string :subject
      t.string :text

      t.timestamps null: false
    end
  end
end
