require 'faker'

ActiveRecord::Base.transaction do 

  40.times do 
    Album.create!(
      title: Faker::Book.title,
      image_url: Faker::Internet.url,
      country: %w(CA US EN FR AU CH IN JP).sample,
      release_date: Faker::Date.between(20.years.ago, Date.today)
    )
  end

  400.times do 
    Review.create(
      rating: (1..5).to_a.sample,
      comment: Faker::Lorem.sentences,
      album_id: (0...40).to_a.sample,
      user_id: (0...50).to_a.sample
    )
  end

  50.times do 
    User.create(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      email: Faker::Internet.email,
      password_digest: Faker::Internet.password(10, 20)
    )
  end

  400.times do 
    Song.create(album_id: (0...40).to_a.sample)
  end

  2000.times do 
    Listen.create(
      song_id: (0...400).to_a.sample,
      user_id: (0...50).to_a.sample
    )
  end
end