FactoryBot.define do
  factory :quote do
    sequence(:name) do |n|
      "#{n.ordinalize} Quote"
    end
    association :company
  end
end
