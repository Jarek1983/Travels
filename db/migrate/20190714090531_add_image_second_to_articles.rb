class AddImageSecondToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :image_second, :string
  end
end
