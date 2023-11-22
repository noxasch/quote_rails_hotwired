FactoryBot.define do
  factory :quote do
    sequence(:name) do |n|
      "#{n.ordinalize} Quote"
    end
  end
end
