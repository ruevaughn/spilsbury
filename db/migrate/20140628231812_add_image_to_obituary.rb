class AddImageToObituary < ActiveRecord::Migration
  def self.up
    add_attachment :obituaries, :image
  end

  def self.down
    remove_attachment :obituaries, :image
  end
end
