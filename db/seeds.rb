10.times do |_|
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: Restaurant::CATEGORIES.sample
  )
  5.times do |_|
    review = Review.new(
      content: Faker::Restaurant.review,
      rating: rand(0..5)
    )
    review.restaurant = restaurant
    review.save
  end
  restaurant.save
end
