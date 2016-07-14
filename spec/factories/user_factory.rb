FactoryGirl.define do
  sequence(:email) {|n| "user#{n}@example.com"}
  factory :user do
    email
    password "fidelino1030"
    first_name "Adam"
    last_name "Fidelino"
    admin false
  end

  factory :user_two, class:User do
    email
    password "fidelino0828"
    first_name "Arthur"
    last_name "Fidelino"
    admin false
  end

  factory :admin, class: User do
    email
    password "fidelino0505"
    first_name "Thelma"
    last_name "Fidelino"
    admin true
  end
end