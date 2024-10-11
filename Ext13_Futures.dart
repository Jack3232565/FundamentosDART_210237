// En Dart, un Future es un objeto que representa el resultado de una operación asíncrona. 
// Un Future actúa como un marcador de posición para un valor que estará disponible en el futuro, 
// lo que permite que tu programa continúe ejecutándose mientras espera que se complete alguna tarea, 
// como una solicitud a una API o la lectura de un archivo.

// ¿Cuándo usar un Future?
// Los Futures se utilizan cuando una operación toma tiempo para completarse, como:

// 1.-Llamadas a servicios web (peticiones HTTP).
// 2.-Operaciones de lectura/escritura en archivos.
// 3.-Acceso a bases de datos.
// 4.-Cualquier operación que pueda ser costosa en términos de tiempo de ejecución.

// ¿Cómo funciona un Future?
// Un Future tiene dos posibles estados principales:

// ° Incomplete (Incompleto): El Future aún no tiene un valor porque la operación asíncrona no ha terminado.
// ° Complete (Completo): El Future puede completarse de dos maneras:
// ° Con éxito: El Future contiene el valor que la operación debía devolver.
// ° Con error: Si algo salió mal durante la operación, el Future se completa con un error.

void main (){

  // Instancia de Arraque del Servicio o Conexión
  print('Inicio del Programa');

      httpGet('https://utxicotepec.edu.mx/')
      // para un mejor manejo de los errores se utilizar
      // el Criterio (.then) que llama la peticion al servicio
      // si este no se concreta controla el error, y lo mejea adecuadamente
      // para saber la razon de  por que no se cumple la peticion 
      // Control Para el manejo del Error al no cumplirse la promesa
      .then(
        (peticion){
        print(peticion);
      }).catchError((err) {
        print('Error: $err');
      });

  //Instanciacion de Finalizacion de la Conexion 
  print('Fin del programa');
}

// implementacion de la promesa
Future <String> httpGet ( String url) {

//  Inicio del Procesamiento de la Promesa 
  return Future.delayed(Duration(seconds: 3), (){

//La respuesta a la peticion tardara 3 segundos
// si la conexion es exitosa
    // return 'Respuesta de la petición HTTP';

//El resultado se ejecutara en 3 segundos si hay error en la conexion 
// se ejecutara el error
        throw 'Error en la peticion HTTP';

  });
}