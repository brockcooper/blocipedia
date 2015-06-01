class CreateWikis < ActiveRecord::Migration
  def change
    create_table :wikis do |t|
      t.string :title
      t.text :body
      t.boolean :private
      
      t.belongs_to :owner
      t.belongs_to :creator

      t.timestamps null: false
    end
      add_foreign_key :wikis, column: :owner_id
      add_foreign_key :wikis, column: :creator_id
  end
end
