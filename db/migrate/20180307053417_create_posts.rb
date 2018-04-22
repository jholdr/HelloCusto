class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :link
      t.string :employer
      t.string :city
      t.string :state
      t.float :latitude
      t.float :longitude
      t.string :location

      t.timestamps
    end

    create_table :categories do |t|
      t.string :name
    end

    add_reference :posts, :category, index: true

  end
end
