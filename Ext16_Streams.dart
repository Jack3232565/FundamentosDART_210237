// En Dart, Streams son una forma de trabajar con secuencias de datos asíncronas. 
//Los Streams son muy útiles cuando quieres recibir una serie de eventos o datos a
// lo largo del tiempo. Son comparables a los Futures, pero en lugar de recibir un 
//solo valor o resultado (como un Future), un Stream puede proporcionar múltiples 
//valores o eventos a lo largo del tiempo, de manera asíncrona.

// Características principales de los Streams:
// - Eventos asíncronos continuos: Un Stream emite una serie de eventos de forma secuencial. Estos eventos pueden ser datos, 
//   errores o notificaciones de finalización.
// - Flujo de datos: En vez de recibir un único valor (como con un Future), un Stream puede emitir varios valores a lo largo del tiempo.
// - Escuchar eventos: Puedes "escuchar" un Stream para reaccionar a los datos o eventos cuando ocurren.
// 
//Tipos de eventos en un Stream:
// - Data: Datos reales que se emiten a lo largo del tiempo.
// - Error: Errores que pueden ocurrir mientras se emiten eventos.
// - Done: Notificación de que no se enviarán más eventos.
// 
//Tipos de Streams:
// - Single-subscription streams (de suscripción única): Se pueden escuchar solo una vez. 
//        Adecuado cuando el flujo de datos es usado por una sola parte del programa, 
//        como la lectura de un archivo o la recepción de datos desde una API.
//
// - Broadcast streams (de transmisión): Permite múltiples escuchas.
//        Útil cuando varios elementos necesitan reaccionar a los mismos datos, como eventos de interacción del usuario.

void main(){

emitNumbers().listen((value){
  print('Stream value: $value');
});

}

// Flujo de datos 
Stream<int> emitNumbers(){

  return Stream.periodic( const Duration(seconds: 1), (value){
    print('Desde periodic $value');
    return value;
  }).take(6);// (take) Permite contar el numero especificado de repeticiones

}