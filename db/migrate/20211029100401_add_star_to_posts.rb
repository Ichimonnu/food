class AddStarToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :overall, :integer
    add_column :posts, :taste, :integer
    add_column :posts, :ambiance, :integer
    add_column :posts, :access, :integer
  end
end
