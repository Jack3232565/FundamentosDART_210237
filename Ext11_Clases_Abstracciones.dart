void main() {

//Declaracion de las Variables de Planta Nuclear y Planta Electrica
  final windPlant = WindPlant(initialEnergy: 100);
  final nuclearPlant = NuclearPlant(energyLeft: 1000);

  print('Consuma de Hidroelectrica : ${chargePhone(windPlant)}');
  print('Consumo de planta de Nuclear: ${chargePhone(nuclearPlant)}');
}

// Declaracion de las Clases

double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception('Not enough energy');
  }
  return plant.energyLeft - 10;
}

// Selecciona uno de estos valores de la seleccion
enum PlantType { nuclear, wind, water }

// Declaracion de la Abstraccion de la clase
abstract class EnergyPlant {
  double energyLeft;
  final PlantType type; // nuclear, wind, water -> se declara la propiedad

// se agregan las propiedades
  EnergyPlant({
    required this.energyLeft,
    required this.type,
  });

  void consumeEnergy(double amount);
}

// Extends example

class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
  // se ingresa los consumo de la variable padre para descontar al hijo 
      : super(energyLeft: initialEnergy, type: PlantType.wind);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}

// Extends instead of Implements for consistency

class NuclearPlant extends EnergyPlant {
  NuclearPlant({required double energyLeft})
      : super(energyLeft: energyLeft, type: PlantType.nuclear);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5);
  }
}


// Tarea 4: implementar la clase abstracta de las Personas considerando las propiedades 
//definidas en el API del Hospital, e implementar la clase Paciente considerando las
// propiedades de : NSS, Tipo de Seguro, Estatus Vida,
// Estatus Medico, Fecha de Registro, Fecha ultima Cita
//
//Al ejecuara debderia arrojar :
//  3 personas diferentes
//            Datos de la Persona
//           -----------------------------------------------------------------------------
//           ID: 256,
//           Nombre: Juan Perez Rodrigrez null,
//           Género: Male
//           Grupo Sanguíneo: O+
//           Fecha de Nacimiento: 1992-08-05 00:00:00.000
//           CURP: ANSISISNN12233
//           Estatus: Activo
//           Fecha de Registro: 17/17/03/2030/11:05:16
//           -----------------------------------------------------------------------------
//            Datos del Paciente
//


//caso 1: Nuevo Paciente que se registra el dia de hoy (datetime.now)
//
//caso 2: De un paciente nuevo, quealguna vez fue trabajador del hospital () 
//fecha inferior al la del registro ya que este ya existio en los registros, 
//por lo que la ata de paciente debe ser actual.  
//
//caso 3:  Un Paciente que acaba de Fallecer.

// importante: reescribir las propiedades del paciente y el metodo del registraDefuncion()