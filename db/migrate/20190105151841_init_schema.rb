class InitSchema < ActiveRecord::Migration[5.2]
  def change
    create_table :users, id: :integer do |t|
      t.string :username, limit: 8, index: {unique: true}, null: false

      t.timestamps
    end
  end
end
