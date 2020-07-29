FactoryBot.define do
  factory :user do
    email { 'user1@user.com' }
    password { 'password' }
    access_kind { 0 }
    community
  end
end