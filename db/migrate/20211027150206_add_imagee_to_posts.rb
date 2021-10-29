class AddImageeToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :image1, :string
    add_column :posts, :image2, :string
    add_column :posts, :image3, :string
    add_column :posts, :image4, :string
  end
end
