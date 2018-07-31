Game.create({
    league_id: 1,
    playerone: Faker::Name.name,
    playertwo: Faker::Name.name
})
League.create([
    name: "League 1"
])

League.create([
    name: "League 2"
])

Game.create([
    league_id: 2,
    playerone: "Rhys",
    playertwo: "Lauren"
])
