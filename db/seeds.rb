Passenger.delete_all
23.times do
 passenger = Passenger.create!(name: Faker::Name.name)
 rand(8).times do
   Suitcase.create!(
     passenger_id: passenger.id,
     description: Faker::Lorem.word
   )
 end
end
