// ¿Qué es async?
// La palabra clave async se usa para marcar una función como asíncrona. 
// Una función marcada como async puede contener operaciones que devuelven un Future,
// y permite el uso de await dentro de ella para manejar esas operaciones. Cuando se usa async,
// la función devuelve automáticamente un Future, incluso si no se especifica explícitamente.

// ¿Qué es await?
// await se usa para esperar el resultado de una operación asíncrona. Cuando colocas await 
// delante de una expresión que devuelve un Future, el programa esperará a que ese Future se
// complete antes de continuar con la ejecución de las líneas de código siguientes.
// Mientras tanto, el programa no se bloquea, lo que permite que otras partes del código sigan ejecutándose.

// Cómo funcionan async y await juntos:
// async marca una función para indicar que contiene operaciones asíncronas.
// await se usa dentro de esa función para esperar a que se resuelvan las operaciones asíncronas.

void main ()  async {
  // Usando async y await para esperar a que se complete una operación asíncron
  print('Inicio del Programa');

//se implementa el control de errores con try-catch para el manejo del error
  try {
    final value = await  httpGet('httphttps://utxicotepec.edu.mx/');
    print(value);
  } catch (err) {
    print('Error: $err');
  }

  print('Fin del programa');
}

// implementacion de la promesa 
// Aplicando Async y Await
// se está simulando una petición HTTP, 
Future <String> httpGet ( String url) async {
//se hace una pausa de 1 segundo
// usando Future.delayed. Esto simula el tiempo de espera de respuesta
  await Future.delayed(Duration(seconds: 4));

// si no hay respuesta se controla el error 
  //throw 'Error en la peticion HTTP';

// Si comentamos el thorow y descomentamos el return
// se obtiene un valor de la petición
   return 'Tenemos un valo de la Petición';

}