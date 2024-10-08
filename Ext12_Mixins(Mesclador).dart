//Los Mixins en Dart son una forma de reutilizar código entre múltiples clases 
//sin necesidad de herencia múltiple, algo que no está permitido en Dart. 
//Los Mixins permiten que una clase comparta su funcionalidad con otras clases, 
//sin que las clases compartan una relación de herencia. Es decir, un Mixin 
//es una clase que puede ser mezclada en otras clases para proporcionar 
//comportamiento adicional.

//Los Mixins son muy útiles cuando tienes funcionalidad común que quieres 
//compartir entre diferentes clases, pero no quieres usar herencia 
//directa para evitar acoplamiento fuerte entre clases.

// Características de los Mixins:
// 1.-Los Mixins no se pueden instanciar directamente.
// 2.-Se pueden mezclar múltiples Mixins en una sola clase.
// 3.-Usualmente no tienen constructores.
// 4.-Pueden definir métodos y propiedades que serán añadidos a las clases que los usen.
// 5.-Sintaxis de los Mixins:
// 6.-Para crear un Mixin, simplemente defines una clase normal, pero luego la puedes usar con la palabra clave with para mezclarla en otra clase.


//Declaracion de la clase Pricnicpal
abstract class Animal {}

//-----------------------------------------------------
//Declaracion de la clase Mamifero
abstract class Mamifero extends Animal {}
//Declaracion de la clase Ave
abstract class Ave extends Animal{}
//Declaracion de la clase Pez
abstract class Pez extends Animal{}
//--------------------------------------------------------

//------------------------------------------------------------
//Declaracion de la clase Voladora
//abstract cambiado a mixin
mixin Volador {
  void volar() => print('Estoy Volando');
}

//Declaracion de la clase Caminante
mixin Caminante {
  void caminar() => print('Estoy Caminando');
}

//Declaracion de la clase Nadador
mixin Nadador {
  void nadar() => print('Estoy Nadando');
}
//-----------------------------------------------------------

//Declaracion de Anuimales con Mixins con (with = mixin)
class Delfin extends Mamifero with Nadador{}
class Murcielago extends Mamifero with Caminante, Volador{}
class Gato extends Mamifero with Caminante{}
class Paloma extends Ave with Volador, Caminante{}
class Pato extends Ave with Volador, Nadador, Caminante{}
class Tiburon extends Pez with Nadador{}
class PezVolador extends Pez with Nadador{}
class Ballena extends Mamifero with Nadador{}

//-----Utilizacion ----

void main() {

  final flipper = Delfin();
  print("Instanciado la clase Mamifero y accediendo al la subclase nadador, e istanciando con Delfin");
  flipper.nadar();
  
  final willi = Ballena();
    print("Instanciado la clase Mamifero y accediendo al la subclase nadador, e istanciando con Ballena");
  willi.nadar();

  final chupacabras = Murcielago();
    print("Instanciado la clase Ave y accediendo al la subclase Volador y Caminar, e istanciando con Cupacabras");
  chupacabras.caminar();
  chupacabras.volar();

  final Lucas = Pato();
    print("Instanciado la clase Ave y accediendo al la subclase Volador, Nadador y Caminar, e istanciando con Pato");
  Lucas.nadar();
  Lucas.volar();
  Lucas.caminar();

}