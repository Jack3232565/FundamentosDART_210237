// Tarea: Ejemplos utilizando funciones Lambda

//Ejemplo 1
void main(List<String> argumentos) {

print(" ----------- Ejemplo 1 ----------------------");
  // Llamamos a las funciones para el primer ejemplo
  funcionUno(1);
  funcionDos(1);
  funcionUno(3);
  funcionDos(3);

print(" ----------- Ejemplo 2 ----------------------");
  // Llamamos a la segunda parte del ejemplo
  List<int> numeros = [1, 2, 3, 4, 5, 6];
  List<int> pares = numeros.where((n) => n % 2 == 0).toList();
  print("Se han imprimido solo los numeros pares del arrego [1, 2, 3, 4, 5, 6]");
  print("y son $pares");


print(" ----------- Ejemplo 3 ----------------------");

  String verificarEdad(int edad){
    if(edad >= 18){
      return "La persona tiene $edad años y es Mayor de edad";
  }else{
    return "La persona tiene $edad años y es Menor de edad";
  }
  }
  print('${verificarEdad(20)}'); 
  print(verificarEdad(16));



  print(" ------------------------------------------------------");
}


void funcionUno(int a) {
  if (a == 3) {
    print("El parametro es 3");
  } else {
    print("El parametro no es 3");
  }
}

void funcionDos(int a) => print("El parámetro ${a == 3 ? 'es ' : 'no es '}3");
