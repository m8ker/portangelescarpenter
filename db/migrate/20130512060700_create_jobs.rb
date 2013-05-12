class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :company
      t.string :my_title
      t.text :description
      t.string :from_date
      t.string :to_date

      t.timestamps
    end
  end
end
