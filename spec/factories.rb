FactoryGirl.define do
  factory :user do
    name     "Vadim Tsvid"
    email    "vadim@tsvid.ua"
    password "foobar"
    password_confirmation "foobar"
  end
end