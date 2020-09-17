class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :publisher
      t.integer :page_length
      t.integer :user_id
    end
  end
end
