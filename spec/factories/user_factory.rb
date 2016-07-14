FactoryGirl.define do
  factory :user do
    email "adam@example.com"
    password "fidelino1030"
    first_name "Adam"
    last_name "Fidelino"
    admin false
  end

  factory :user_two, class:User do
    email "arthur@example.com"
    password "fidelino0828"
    first_name "Arthur"
    last_name "Fidelino"
    admin false
  end
end