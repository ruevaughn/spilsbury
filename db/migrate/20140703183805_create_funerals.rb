class CreateFunerals < ActiveRecord::Migration
  def change
    create_table :funerals do |t|
      t.text :location
      t.datetime :service_begins
      t.text :visitation
      t.text :interment

      t.timestamps
    end
  end
end
