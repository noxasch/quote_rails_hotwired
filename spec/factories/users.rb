FactoryBot.define do
  factory :user do
    # sequence(:name) do |n|
    #   "#{n.ordinalize} Company"
    # end
    company

    # trait :accountant do
    #   email { "accountant@kpmg.com"}
    #   pasword { "password" }
    #   association :company, name: "kpmg"
    # end

    # trait :manager do
    #   email { "manager@kpmg.com"}
    #   pasword { "password" }
    #   association :company, name: "kpmg"
    # end

    # trait :eavesdropper do
    #   email { "eavesdropper@pwc.com"}
    #   pasword { "password" }
    #   association :company, name: "pwc"
    # end
  end
end
