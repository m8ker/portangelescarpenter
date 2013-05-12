class Job < ActiveRecord::Base
  attr_accessible :company, :description, :from_date, :my_title, :to_date
end
