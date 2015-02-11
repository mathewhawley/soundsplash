class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :name
      t.integer :user_id
      t.text :image
      t.timestamps
    end
  end
end
