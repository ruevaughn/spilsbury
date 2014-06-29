class CreateObituaries < ActiveRecord::Migration
  def change
    create_table :obituaries do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :gender
      t.date :born_date
      t.date :death_date

      t.timestamps
    end
  end
end
