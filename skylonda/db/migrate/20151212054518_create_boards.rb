class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.string :name
      t.datetime :date
      t.string :description
      t.integer :level

      t.timestamps null: false
    end
  end
end
