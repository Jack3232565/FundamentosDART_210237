void main() {
  // Crear una instancia de la clase Square con el lado inicial de 18
  final mySquare = Square(side: 18);

  // Usamos el setter para asignar un nuevo valor al lado y ver el mensaje impreso
  // Esto invoca el setter, que valida y asigna el nuevo valor al lado
  mySquare.side = 23; // Se espera el mensaje: "Asignando un nuevo valor al lado: 23"

  // Imprimir el valor del lado y el área ocupada por el cuadrado
  print("""
Lado del Cuadrado: ${mySquare.side}       // Usando el getter para obtener el valor del lado
Área que ocupa: ${mySquare.calcularArea()}  // Llamando al método calcularArea para obtener el área
  """);
}

class Square {
  double _side; // Propiedad privada que almacena el valor del lado

  // Constructor que recibe el valor del lado y lo asigna a la propiedad privada _side
  Square({required double side}) : _side = side;

  // Getter para obtener el valor del lado desde fuera de la clase
  double get side {
    return _side; // Retorna el valor de _side
  }

  // Setter para modificar el valor del lado y mostrar un mensaje cuando se asigna un nuevo valor
  set side(double value) {
    print("Asignando un nuevo valor al lado: $value"); // Mensaje indicando el nuevo valor del lado

    // Validación para asegurarse de que el valor sea mayor a 0
    if (value <= 0) {
      print("""El valor del lado debe ser mayor a 0    // Mensaje si el valor es inválido"""); // Mensaje si el valor es inválido
      return; // Termina la ejecución del setter si el valor es inválido
    }

    _side = value; // Si el valor es válido, se asigna a la propiedad privada _side
  }

  // Método para calcular el área del cuadrado (lado * lado)
  double calcularArea() {
    return _side * _side; // Retorna el área calculada
  }
}
