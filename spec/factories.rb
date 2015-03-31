FactoryGirl.define do
  factory :user do
    sequence(:name)  { |n| "Person #{n}" }
    sequence(:email) { |n| "person_#{n}@example.com" }
    password "foobar"
    password_confirmation "foobar"

    factory :admin do
    	admin true
    end
  end

  factory :project do
  	sequence(:title) { |n| "Project #{n}" }
  	sequence(:description) { |n| "Description of the Project #{n}" }
  	sequence(:deadline) { |n| "#{n}".to_i.day.from_now }
  	priority 1
  	is_done false
  	user
  end
end