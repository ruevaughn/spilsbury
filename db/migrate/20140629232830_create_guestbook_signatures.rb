class CreateGuestbookSignatures < ActiveRecord::Migration
  def change
    create_table :guestbook_signatures do |t|
      t.references :guestbook, index: true
      t.string :name
      t.text :message

      t.timestamps
    end
  end
end
