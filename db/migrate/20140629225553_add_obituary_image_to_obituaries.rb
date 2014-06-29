class AddObituaryImageToObituaries < ActiveRecord::Migration
  def change
    add_column :obituaries, :obituary_image, :string
  end
end
