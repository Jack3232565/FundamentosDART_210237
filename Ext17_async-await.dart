

void main(){
// Se llama a la función emitNumbers(), que devuelve un Stream asíncrono.
// El método listen() sescuchar los valores emitidos por el Stream.
// Al emitirse un valor, se ejecutará el callback que imprime el valor recibido.
emitNumbers().listen((value){
  print("Stream value: $value");
});

}
// async* se asicia a un metodo o funcion que regresa un String
// La palabra clave async* se asocia a una función que devuelve un Stream asíncrono.
emitNumbers() async*{

// Se define le arreglo de valores que se desean emitir a través del Stream.
  final valuesToEmit = [1,2,3,4,5,'A','B','C'];

// Se recorre el arreglo de valores a emitir con el bucle (for).
  for(dynamic i in valuesToEmit){
// Se espera un segundo antes de emitir el valor.
    await Future.delayed(Duration(seconds: 1));
// Se emite el valor asignado.
    yield i;// yield cede el valor asignado
  }


}