class Seed

  def self.begin
    seed = Seed.new
    seed.generate_quotes
  end

  def generate_quotes
    20.times do |i|
      review = Review.create!(
        author: Faker::Book.author,
        content: Faker::ChuckNorris.fact,
        city: Faker::Address.city
      )
      puts "Review #{i}: Author is #{review.author} and city is '#{review.city}'."
    end
  end
end

Seed.begin
