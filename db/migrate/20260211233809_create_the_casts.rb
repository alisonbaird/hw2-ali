class CreateTheCasts < ActiveRecord::Migration[8.1]
  def change
    create_table :the_casts do |t|
      t.integer "movie_id"
      t.string "character_name"
      t.integer "actor_id"
      t.timestamps
    end
  end
end
