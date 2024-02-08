
FactoryBot.define do
  factory :article do
    title { Faker::Lorem.sentence(word_count: 5) }
    content { Faker::Lorem.paragraph(sentence_count: 10) }
  end
end