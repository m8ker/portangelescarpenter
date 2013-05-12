# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :header do
    name "MyString"
    title "MyString"
    quotation "MyText"
    phone "MyString"
    email "MyString"
    pdf_file_name "MyString"
    location "MyString"
    summary "MyText"
  end
end
