FactoryBot.define do
  factory :company do
    sequence(:name) do |n|
      "#{n.ordinalize} User"
    end
  end
end
