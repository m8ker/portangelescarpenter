class CreateHeaders < ActiveRecord::Migration
  def change
    create_table :headers do |t|
      t.string :name
      t.string :title
      t.text :quotation
      t.string :phone
      t.string :email
      t.string :pdf_file_name
      t.string :location
      t.text :summary

      t.timestamps
    end
  end
end
