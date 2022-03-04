FactoryBot.define do
  factory :category do
    name { Fake::Book.genre }
  end
end