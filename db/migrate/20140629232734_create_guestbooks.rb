class CreateGuestbooks < ActiveRecord::Migration
  def change
    create_table :guestbooks do |t|
      t.integer :obituary_id

      t.timestamps
    end
  end
end
