class CreateTagJoins < ActiveRecord::Migration
  def change
    create_table :tag_joins do |t|
      t.integer :tag_id
      t.integer :website_id

      t.timestamps null: false
    end
  end
end
