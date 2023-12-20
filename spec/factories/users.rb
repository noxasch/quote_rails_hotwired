FactoryBot.define do
  factory :user do
    sequence(:name) do |n|
      "#{n.ordinalize} Company"
    end
    association :company
  end
end
