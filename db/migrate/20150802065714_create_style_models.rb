class CreateStyleModels < ActiveRecord::Migration
  def change
    create_table :style_models do |t|
      t.string       :image_url
      t.integer     :image_file_size
      t.string       :purchase_url

      t.timestamps null: false
    end
  end
end
