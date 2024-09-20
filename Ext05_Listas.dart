void main() {
  // Lista (LIST)

  //La declaracion de LIST esta limitada por Corchetes (Brackets),
  //y en cada elemento de ser individual y puede repetirse
  final numero = [1, 2, 2, 2, 3, 4, 5, 6, 7, 7, 7, 7, 8, 8, 9, 10];

  print("Ejemplo de List1; $numero");

  final List<int> numeros = [1, 2, 2, 2, 3, 4, 5, 6, 7, 7, 7, 7, 8, 8, 9, 10];

  print(
      "Configuramos el tipo de dato para NUMEROS que es:: ${numeros.runtimeType}");
  print("Ejemplo de List2; $numeros");

  print("Podemos acceder a cierta informacion de una lista como:");
  print("El tamaño: $numero.length");
  print("""
        Para acceder a los elemenetos debemos especificar la posicion entre []
        El primer elemento en la primera posicion es: ${numero[0]}
        El elemento en la segunda posicion es ${numero[1]}, siempre respetando el posicionamiento-1
        El ultimo elemento de la lista seria: ${numero[numero.length - 1]}
        -------------------------------------------------------------------------------
        De igual manera existe las siguientes alternativas 
        Primer elemento ${numeros.first}
        Último elemento ${numeros.last}
        -------------------------------------------------------------------------------
        Tambien tenemos acceso a algunos metodos que permiten la transformacion o filtrado del contenido
        po ejemplo usar reversed, para intervenir el orden original: ${numeros.reversed}
        Es impotante observar que la funcion reversed ha transformado la LIST original y la retorna como
        un ITERABLE
        """);

  //Itrables (ITERABLES)
  final numerosAlreves = numeros.reversed;
  print(
      """Lista iterable de datos que DART y otros lenguajes para optimizar en terminos de velocidad 
              el acceso a los datos y propiedad """);
  print("Ejemplo de un ITERABLE: $numerosAlreves");
  print("Configuramos el tipo de dato para NUMEROS ALREVES que es: ${numerosAlreves.runtimeType}");
  print("De igual manera podemos transformar una LISTA en ITERABLE y Viseversa");
  print("""Convertimos el ITERABLE a LISTA usando .toList: ${numerosAlreves.toList()} 
  y verificamos el tipo de dato: ${numerosAlreves.toList().runtimeType}""");
  
    //Conjunto de Datos (SET)
    //Un SET es una estrucutura de datos utilizada para DART, que simplifica los elementos eliminando los duplicados.
  print("------------------------------------------------------------------------------------------");
  print("Veamos que pasa con lo Conjuntos (SET)");
  print("""Convertimos el ITERABLE en un SET usando .toSet ${numerosAlreves.toSet()} 
        Podemos visualizar en el resultado que el SET a eliminado los duplicados y ahora delimita los datos usando {}
  """);

  //De igual manera podemos realizar operaciones para el filtro de elementos usando .where()

  final numerosMayoeresAS = numeros.where((num){
     return num > 5;
  });

  print(""" Hemos filtrado sobre la LIST solo los elementos mayores a 5:
    Resultado de filtro : ${numerosMayoeresAS.toList()}
  """);
  print("Eliminamos los duplicados ... ${numerosMayoeresAS.toSet()}");
   
}
