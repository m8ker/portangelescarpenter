class Header < ActiveRecord::Base
  attr_accessible :email, :location, :name, :pdf_file_name, :phone, :quotation, :summary, :title
end
