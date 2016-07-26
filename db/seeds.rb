require 'active_record'
require 'pg'


require_relative 'connection'
require_relative '../models/pokemon'
require_relative '../models/trainer'


Pokemon.destroy_all
Trainer.destroy_all

Pokemon.create(name: "Charmander", cp: rand(800), poke_type: "fire", img_url: "https://img.pokemondb.net/artwork/charmander.jpg")
Pokemon.create(name: "Squirtle", cp: rand(800), poke_type: "water", img_url: "https://img.pokemondb.net/artwork/squirtle.jpg")
Pokemon.create(name: "Pikachu", cp: rand(800), poke_type: "lightning", img_url: "https://img.pokemondb.net/artwork/pikachu.jpg")
Pokemon.create(name: "Bulbasaur", cp: rand(800), poke_type: "grass", img_url: "https://img.pokemondb.net/artwork/bulbasaur.jpg")
Pokemon.create(name: "Clefairy", cp: rand(800), poke_type: "fairy", img_url: "https://img.pokemondb.net/artwork/clefairy.jpg")
Pokemon.create(name: "Nidoking", cp: rand(800), poke_type: "poison ground", img_url: "https://img.pokemondb.net/artwork/nidoking.jpg")
Pokemon.create(name: "Gengar", cp: rand(800), poke_type: "ghost poison", img_url: "https://img.pokemondb.net/artwork/gengar.jpg")
Pokemon.create(name: "Blastoise", cp: rand(800), poke_type: "water", img_url: "https://img.pokemondb.net/artwork/blastoise.jpg")

Trainer.create(name: "Ash", level: 50, img_url: "http://vignette1.wikia.nocookie.net/erbparodies/images/f/f2/200px-Ash_anime.png/revision/latest?cb=20130618174900")
Trainer.create(name: "Misty", level: 30, img_url: "https://lh5.googleusercontent.com/-yWzKXbmMwGc/VSma-nEZA2I/AAAAAAAAAFM/6uSdbvWOrLs/s800/misty.png")
Trainer.create(name: "Brock", level: 48, img_url: "https://upload.wikimedia.org/wikipedia/en/7/71/DP-Brock.png")
Trainer.create(name: "Gary Oak", level: 55, img_url: "https://lh3.googleusercontent.com/-1WWdU_HlTXQ/VYbYkfIGTNI/AAAAAAAABKo/DZ2ahEa6s_Y/s800/gary%252520oak.png")
Trainer.create(name: "Serena", level: 45, img_url: "http://66.media.tumblr.com/c770792bc8f9c83e9eccd06f2824a91d/tumblr_nxeget9e9H1udiksao7_400.jpg")
Trainer.create(name: "Iris", level: 39, img_url: "https://upload.wikimedia.org/wikipedia/vi/thumb/7/7b/Airisu_BW.gif/180px-Airisu_BW.gif")
Trainer.create(name: "Tracey", level: 35, img_url: "http://vignette4.wikia.nocookie.net/p__/images/5/52/Traceyem7.gif/revision/latest?cb=20120116205847&path-prefix=protagonist")
Trainer.create(name: "Cilan", level: 15, img_url: "http://vignette1.wikia.nocookie.net/pokeworld-fanon/images/9/99/Cilan_BW2.jpg/revision/latest?cb=20150714205142")
