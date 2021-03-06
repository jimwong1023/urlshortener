class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :original_url
      t.string :key
      t.integer :count, default: 0

      t.timestamps
    end
  end
end
