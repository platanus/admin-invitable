FactoryBot.define do
  factory :admin_user do
    sequence(:email) { |n| "email#{n}@example.com" }
    sequence(:password) { 12345678 }
  end
end
