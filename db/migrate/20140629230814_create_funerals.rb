class CreateFunerals < ActiveRecord::Migration
  def change
    create_table :funerals do |t|
      t.text :location
      t.integer :obituary_id
      t.datetime :funeral_date

      t.timestamps
    end
  end
end
