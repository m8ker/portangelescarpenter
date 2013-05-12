# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :job do
    company "MyString"
    my_title "MyString"
    description "MyText"
    from_date "MyString"
    to_date "MyString"
  end
end
