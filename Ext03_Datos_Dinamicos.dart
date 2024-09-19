void main() {
  //Practica 05: Tipos de Datos Dinamicos (Dynamic - Comodín)

  //Se puede declarar sin inicializar
  dynamic errorMessage;

  print('''El error inicial de errorMessage es: $errorMessage
  que por defecto permite establecer valores nulos''');

  //Ahora le asignamos un valor String
  errorMessage = "El usuario y contraseña son incorrectos";
  print('''----------------------------------------------
  El nuevo valor de errorMessage es: $errorMessage
  En algunos sistemas los errores son controlados por un código numérico.''');

  //Ahora le asignamos un valor numérico
  errorMessage = 404;
  print('''----------------------------------------------
  El nuevo valor de errorMessage es: $errorMessage
  Cuando el sistema funciona correctamente, el mensaje de error puede ser FALSO.''');

  //Ahora le asignamos un valor booleano
  errorMessage = false;
  print('''----------------------------------------------
  El nuevo valor de errorMessage es: $errorMessage
  Cuando el sistema funciona correctamente, el mensaje de error puede ser FALSO.''');

  //Ahora le asignamos una lista
  errorMessage = [400, 404, 500, 502, 505];
  print('''----------------------------------------------
  El nuevo valor de errorMessage es: $errorMessage
  En caso de que el sistema detecte varios errores, puedes agregar una lista.''');

  //Ahora le asignamos un conjunto (Set)
  errorMessage = {125, "Usuario no Encontrado", true, -1025.16, 'A'};
  print('''----------------------------------------------
  El nuevo valor de errorMessage es: $errorMessage
  O incluso como un conjunto (SET) de datos.''');

  //Finalmente le asignamos una función
  errorMessage = () => true;
  print('''----------------------------------------------
  El último cambio de errorMessage es: $errorMessage
  Cuando el sistema funciona correctamente, el mensaje de error puede ser FALSO.''');
}

// Resultado: configurando rama del ejercicio 05