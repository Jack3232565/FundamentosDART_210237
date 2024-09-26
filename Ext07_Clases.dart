void main(){
  //Repaso de Clase en DART


// Inicializamos la Clase Heroe
final wolverine = Hero("Logan", "Regeneracion");

print("Heroe 1: -------Creacion del objeto------------------------------");
print(wolverine);
print(wolverine.name);
print(wolverine.power);

print("Heroe 2: ------Creacion del objeto-------------------------------");
final sacarletWitch = Hero("Magia del Caos", "Wanda");
print(sacarletWitch);
print(sacarletWitch.name);
print(sacarletWitch.power);


print("Heroe 3: ------Creacion del objeto-------------------------------");
//Creacion del objeto
final xmen = Team(type:"Heroes", name: "X-Men");
print(xmen);
print(xmen.name);
print(xmen.type);

print("Heroe 3: ------Creacion del objeto-------------------------------");
final justiceLeague = Team(name: "La Liga de la Justicia");
print(justiceLeague);
print(justiceLeague.name);
print(justiceLeague.type);


// Nota: al estar definido con required los parametros se deben de establecer
// de manera necesario , Intentamos instanciar la clase con solo el valor tipo,
// que no lo permite por que la propiedad del nombre no es requerido
//final hydra = Team(type: "Villanos");


}



//----------------------------------------------------------------------
// 1. Clases en DART
// Clase con Valores pocicionales
class Hero {
  String name;
  String power;

  // se inicializa en un constructor
  Hero(String pName, String pPower): 
    name= pName,
    power = pPower; 
}

//2. Clase con propiedades no Pocicionales y nombradas 
class Team 
{
  String name;
  String type;

  //El construcutor de la clase siempre debe llevar el mismo nombre del a misma
  Team({required this.name, this.type="No definido"});
}