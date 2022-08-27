puts "🌱 Seeding data..."

# run the creating of the game and review instances 50 times
50.times do   
  # create a game with random data
  game = Game.create(  #Note this use of the ibuilt active record Orm method to create and save an instance of a class
    title: Faker::Game.title,
    genre: Faker::Game.genre,
    platform: Faker::Game.platform,
    price: rand(0..60) # random number between 0 and 60 non-inclusive
  )

  # create between 1 and 5 reviews for each game
  rand(1..5).times do   #choose any number of times to create reviews
    Review.create(
      score: rand(1..10), #any random number of goals between one goal and ten
      comment: Faker::Lorem.sentence,
      game_id: game.id # use the ID (primary key) of the game as the foreign key.This is the game that was created up there in this iteration of the loop
    )
  end
end

puts "🌱 Done seeding!"
