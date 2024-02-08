# spec/models/article_spec.rb

require 'rails_helper'

RSpec.describe Article, type: :model do
  it "is valid with valid attributes" do
    article = FactoryBot.build(:article)
    expect(article).to be_valid
  end

  it "is not valid without a title" do
    article = FactoryBot.build(:article, title: nil)
    expect(article).to_not be_valid
  end

  it "is not valid without content" do
    article = FactoryBot.build(:article, content: nil)
    expect(article).to_not be_valid
  end

  it "is not valid with a title shorter than 5 characters" do
    article = FactoryBot.build(:article, title: "abcd")
    expect(article).to_not be_valid
  end

  it "is not valid with content shorter than 50 characters" do
    article = FactoryBot.build(:article, content: "Lorem ipsum dolor sit amet")
    expect(article).to_not be_valid
  end
end
