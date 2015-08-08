class AddAnotherColumnToUploads < ActiveRecord::Migration
  def change
  	add_column :uploads, :image_url, :string
  end
end
