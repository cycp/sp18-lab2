# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ash = Trainer.create(name: 'Ash')
misty = Trainer.create(name: 'Misty')
brock = Trainer.create(name: 'Brock')

ash.pokemons.create(name: 'Pikachu')
ash.pokemons.create(name: 'Charmander')

misty.pokemons.create(name: 'Goldeen')
misty.pokemons.create(name: 'Staryu')

brock.pokemons.create(name: 'Geodude')