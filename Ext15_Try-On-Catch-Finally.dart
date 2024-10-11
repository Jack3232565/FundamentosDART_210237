
void main ()  async {
  //Se imprime el arranque del programa
  print('Inicio del Programa');

//se implementa el control de errores con try-catch para la ejecución de la promesa
  try {
    // Se llama a la función httpGet, que es asíncrona, usando await para esperar su resultado.
    // El valor que retorne la función se almacena en la variable 'value'.
    final value = await  httpGet('httphttps://utxicotepec.edu.mx/');
    //Se imprime el valor obtenido de la función httpGet
    print( 'éxito: $value');
    
    //Se captura la exepcion si la hay 
  } on Exception catch(err){
    // Al existir una exepcion esta se imprimra  de manera controlada
    print('Tenemos una Exepción $err');
  }
   //Se captura la exepcion si la hay
  catch (err) {
    // Al existir una exepcion esta se imprimra  de manera controlada
    print('OPP!! Algo terrible Pasó: $err');
    //El bloque finally se ejecuta siempre, ya sea que haya ocurrido un error o no.
  }finally{
    print('Fin del Try-Catch');
  }

  // Al procesarse el control de errores finaliza el programa
  print('Fin del programa');
}

// implementacion de la promesa 
// Aplicando Async y Await
Future <String> httpGet ( String url) async {
  // Simula una demora de 1 segundo para imitar el tiempo que tarda una petición HTTP.
  await Future.delayed(Duration(seconds: 1));

  // Lanza una excepción indicando que no hay parámetros en el URL.
  // Esto simula un error en la solicitud.
   throw Exception('No hay parametros en el URl');

  // si existiece un error este se detectaria en esta seccion al intetar conectar
  //throw 'Error en la peticion HTTP';

  // si no ubiese al guna interferencia el proceso este pasaria retornando el valor
  //  return 'Tenemos un valo de la Petición';

}