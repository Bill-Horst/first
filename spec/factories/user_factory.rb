FactoryBot.define do
  sequence(:email) { |n| "user#{n}@example.com" }

  factory :user do
    email
    password 'pa$$word'
    first_name 'Regular'
    last_name 'User'
    admin false
  end

  factory :admin, class: User do
    email
    password 'pa$$word'
    first_name 'Admin'
    last_name 'User'
    admin true
  end
end
