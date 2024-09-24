void main () {

// 1. Llamado de un funcion sin prarámetros
greetEveryone();

// 2. Llamado de una funcion que retorna valores
// a) Sin almacenar el valor en una variable
    print("Hoy es el dia numero: ${getDayNumber()} del mes");
// b) Almacenando el valor de la funcion en una nueva variable
    final int diaMes; 
    diaMes = getDayNumber();
    print("En tres dias será: ${diaMes+3}");

  print("----------------------------------------------------");
    print("---- Parametos con Dynamic ---- ");
// 3. Llamado de una funcion con un solo parametro obligatorio
//a. Llamado correcto
  print(greetSomeone("Carlos C."));
//b. En caso de que la funcion este declarada con dynamic
  print(greetSomeone1(4));
  print(greetSomeone1(-312));
  print(greetSomeone1(3.1416));
  print(greetSomeone1(true));
  print("----------------------------------------------------");
    print("---- Parametos Tipados ---- ");
// 3.1 Tipando el Parametro de entrada
// Mismo experimnto pero hahora con la funcion con parametros tipados
  print(greetSomeoneTypy("4"));
  print(greetSomeoneTypy("-312"));
  print(greetSomeoneTypy("3.1416"));
  print(greetSomeoneTypy("true"));

print("-------------------------------------------");
// 3.2 

  // print(greetSomeone());
// Esta no se puede ejecura po que si no se definen los parametros 
// de un funcion por default estan definidos como obligatorios

// 4.Llamado de una funcion con parametros opcionales.
// 4.1 Enviamos ambos parametros
  String name = "Carlos";
  int? hora = 12;
  print(greetHourOfDay(name, hora));

// 4.2 solo enviando el obligatorio
  print(greetHourOfDay2("Janet", null));
  print("Hora: $hora");
}

//Funciones y Parametros

// Declaracion
//1. Funcion Sin Parametros
void greetEveryone()
{
  print("Hola a Todas y Todos :D");
}

//2. Funciones sin Parámetros, que retorna datos
getDayNumber()
{
  DateTime now = DateTime.now();
  int day = now.day;
  return day;
}

// 3. Funciones que reciben un parametrom en DART sin ni se especifica como opcional simpres sera obligatorio
String greetSomeone(String name) {
  return "Hola, $name";
}

dynamic greetSomeone1(name) {
  return "Hola, $name";
}

//3.1 tipamos el parametro de entrada

String greetSomeoneTypy(String name){
  return "Hola, $name";
}

//4. Función con parametros opcionales

// int? Puede ser opcional - NullSafety
String greetHourOfDay(String name, int? hora){
  hora ??= DateTime.now().hour;
  String saludo;

  if(hora >= 6 && hora < 12){
    print("Hora: ${hora}");
  saludo = "Buenos dias";
  }
  else if(hora > 12 && hora < 18){
    saludo = "Buenas tardes";
  }
  else{
    saludo = "Buenas noches";
  }

  return "${saludo}, ${name}";

}  


String greetHourOfDay2(String name, int? hora){
  hora ??= DateTime.now().hour;
  String saludo;

  if(hora >= 6 && hora < 12){
  saludo = "Buenos dias";
  }
  else if(hora > 12 && hora < 18){
    saludo = "Buenas tardes";
  }
  else{
    saludo = "Buenas noches";
  }

  return "${saludo}, ${name}";

}  
