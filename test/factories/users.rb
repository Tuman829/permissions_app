FactoryGirl.define do
  factory :user do
    email "MyString"
    read false
    write false
    remove false
    password_digest "MyString"
  end
end
