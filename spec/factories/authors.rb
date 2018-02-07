FactoryBot.define do
  factory :facade do
    author

    name "CV"
    description  "My pretty little CV generator"
    publication { Time.gm }
  end
end