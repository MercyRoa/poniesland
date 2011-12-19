class AddImageUrlToPony < ActiveRecord::Migration
  def change
    add_column :ponies, :image_url, :string
  end
end
