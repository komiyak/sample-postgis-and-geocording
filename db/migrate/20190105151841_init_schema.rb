class InitSchema < ActiveRecord::Migration[5.2]
  def change
    create_table :users, id: :integer do |t|
      t.string :username, limit: 8, index: {unique: true}, null: false
      t.st_point :location, null: false
      t.string :location_name, limit: 8, null: false
      t.integer :state, null: false

      t.timestamps

      t.index :location, using: :gist
      t.index :state
    end

    create_table :comments do |t|
      t.text :title, null: false

      t.timestamps
    end
  end
end
