class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :body
      t.string :name
      t.string :photo_url
      t.string :provider
      t.string :provider_id
      t.integer :room_id

      t.timestamps
    end
  end
end
