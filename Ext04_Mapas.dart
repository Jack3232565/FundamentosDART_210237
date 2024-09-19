void main() {
  final pokemon = {

    "Nombre": "Picachu",
    "Tipo": "Electrico",
    "HP" : 100,
    "isAlive" :true,
    "abilities":["impacto", "Trueno", "Cola de Hierro", "Rapido"],
    "sprites":{
      1: "picachu/front.png",
      2: "picachu/back.png"
    }

  };

  final Map<String, dynamic> trainer = {
    "Nombre": "Ash",
    "Edad": 12,
    "Ciudad": "Pueblo Paleta",
    "Pokemon": pokemon,
    "isGymnasiumLeader": false
  };

  final pokemons = {

    1: "Picachu",
    2: "Charmender",
    3: "Squirtle",
    4: "Pidgeot"

  };

// se impremen los mapas en conjunto
  print(""" Los datos del pokemon son usando el Mapa son:
  -------------------------------------------------------
  Pokemon = $pokemon
  Trainer = $trainer
  Pokemons = $pokemons
  """);

  print("""********************************************""");
 print("""Accediendo a las propiedades del pokemon usando los braquets/corchetes[]:
 -------------------------------------------------------------
 Nombre = ${pokemon["Nombre"]}
 HP = ${pokemon["HP"]}
 Vivo = ${pokemon["isAlive"]}
 Sprintes = ${pokemon["sprites"]}
 --------------------------------------------------------------
 
 """);

 //Reto 01: obtener el valor independiente de las imagenes de Front y Back del Pokemon

 //Front: ${(pokemon['spites'])[1]}
 //Back: ${pokemon['sprites'][2]}

//Dado que la solucion ya esta obsoleta lo que queda es crear una nueva variable 
//con el objeto y destrucuturar las imagenes para acceder a ellas

  final tmp_sprites = pokemon['sprites'] as Map<int,String>;

  print("""Accediendo a las propiedades del pokemon usando los braquets/corchetes []:
  --------------------------------------------------------------------------------------
  Nombre = ${pokemon["Name"]}
  HP = ${pokemon['HP']}
  Vivo = ${pokemon['isAlive']}
  Sprites = ${pokemon['sprites']}
  --------------------------------------------------------------------------------------}
  Back: ${tmp_sprites[2]}
  Front: ${tmp_sprites[1]}

  """);



print("Lamado de las variables 'pokemons', 'trainer' y 'pokemon' ");
  // Use the pokemons variable
  print("List of pokemons: $pokemons");

  
  // Use de la variable trainer
  print("Trainer's name: ${trainer['Nombre']}");


  //Imprimir los datos de un mapa
  print(""" Los datos actuales del mapa son: $pokemon """ );

}