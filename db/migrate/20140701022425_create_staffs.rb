class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :name
      t.string :image
      t.text :description
      t.string :job_name

      t.timestamps
    end
  end
end
