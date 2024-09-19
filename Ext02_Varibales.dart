void main(){
//Pactica 04: Tipos de datos

//Cadena (String)
final String pokemon = "Bulbasor";

//Entero (Int)
final int hp = 100;

//booleano (Boolean)
final bool isAlive = true;

final abilities = ['Impact-True', 'acuatico'];

final sprites = <String>['bulbasor/front.png','bulbasor/back.png'];

final int puntos = 0;

// Tablero del Juego y llamado de las variables que almacenan los dato de tipo
// String, Int, Boolean, List y Map
print('''El pokemon es $pokemon
-------------------------------------------------
Las estadisiticas de $pokemon
Vida(hp): $hp
Estatus de vida: $isAlive
Habilidades: $abilities
Imagen: $sprites
Puntos: $puntos

''');
}