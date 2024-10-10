//            Fundamentos en DART
//
//          Desarrollo Móvil Integral
//
// Docente: M.T.I Marco Antonio Ramírez Hernández 
//  
//  Tarea 04 - Clases Abstractas caso Hospital
//  
//      Carlos Iván Crespo Alvarado - 210237
//                   10 A°
//      Fecha: 11 de Octubre del 2024
// 
void main() {

  final operacionesCRUD = OperacionesCRUD();

// Operacion - CREATE (Insercion de DATOS)
 // Caso 1: Nuevo Paciente registrado hoy,
 // con la descipcion del paciente.
final pacienteA = NuevoPaciente(
    id: 256,
    cortesyTitle: "Dr.",
    nombre: 'Carlos',
    primer_apellido: 'Crespo',
    segundo_apellido: 'Alvardo',
    genero: Genero.Masculino,
    grupoSanguineo: GrupoSanguineo.OP,
    fechaNacimiento: DateTime(1992, 8, 5),
    curp: 'ANSISISNN12233',
    estatus: 'Activo',
    nss: '1234567890',
    tipoSeguro: 'Publico IMSS',
    estatusVida: EstatusVida.Vivo,
    estatusMedico: 'Activo',
    fechaRegistro: DateTime.now(),
    fechaUltimaCita: DateTime.now(),
    tipoUsuario: usuario.Nuevo
);
  //Se imprimen los datos del paciente que se han procesado 
  //desde la Clase Extendida NuevoPaciente que recibe los datos de la clase Abstracta Paciente 
pacienteA.imprimirDatosPaciente();

  // Caso 2: Paciente que fue trabajador del hospital con fecha de registro anterior
  // los datos del trabajador exitente en la base de datos son:
final pacienteB = PacienteRegistrado(
    id: 257,
    cortesyTitle: "Dra.",
    nombre: 'Janet',
    primer_apellido: 'Hernandez',
    segundo_apellido: 'Viveros',
    genero: Genero.Femenino,
    grupoSanguineo: GrupoSanguineo.AP,
    fechaNacimiento: DateTime(1985, 12, 10),
    curp: 'MARGLOPE12345',
    estatus: 'Activo',
    nss: '0987654321',
    tipoSeguro: 'Publico ISSSTE',
    estatusVida: EstatusVida.Vivo,
    estatusMedico: 'Activo',
    fechaRegistro: DateTime(2020, 1, 15), // Fecha en la que se registro el paciente
    fechaUltimaCita: DateTime.now(),
    tipoUsuario: usuario.Registrado
);
  //Se imprimen los datos del paciente que se han procesado 
  //desde la Clase Extendida PacienteRegistrado que recibe los datos de la clase Abstracta Paciente 
pacienteB.imprimirDatosPaciente();


  // Caso 3: Paciente fallecido
final pacienteC = Pacientefinado(
  id: 261,
    cortesyTitle: "Sra.",
    nombre: 'Daniela',
    primer_apellido: 'Lopez',
    segundo_apellido: 'Marquez',
    genero: Genero.Femenino,
    grupoSanguineo: GrupoSanguineo.BP,
    fechaNacimiento: DateTime(1970, 4, 25),
    curp: 'PEDLOMAR123456',
    estatus: 'Activo',
    nss: '5678912345',
    tipoSeguro: 'Privado ING',
    estatusVida: EstatusVida.Vivo,
    estatusMedico: 'Activo',
    fechaRegistro: DateTime(2022, 6, 10),
    fechaUltimaCita: DateTime.now(),
    tipoUsuario: usuario.Registrado,
    deceso: DateTime.now()
);
  //Se imprimen los datos del paciente que se han procesado 
pacienteC.imprimirDatosPaciente();
 
 //---------------------------------------------------------------

// Operacion - CREATE (Insercion de DATOS)
  print('-----------------------------------------------');
  print('--- Operacion - CREATE (Insercion de DATOS) ---');
  print('-----------------------------------------------');
operacionesCRUD.crearPersona(pacienteA);
operacionesCRUD.crearPersona(pacienteB);
operacionesCRUD.crearPersona(pacienteC);

print('-----------------------------------------------');
print('-----------------------------------------------');
print('--- Operacion - READ (Lectura de los Datos) ---');
print('-----------------------------------------------');
// Operacion - READ (Lectura de los Datos)
operacionesCRUD.TodoPersonas();

print('-----------------------------------------------');
print('-----------------------------------------------');
print('--- Operacion - UPDATE (Actualizacion de los Datos) ---');
print('-----------------------------------------------');
// Operacion - UPDATE (Actualizacion de los Datos)
operacionesCRUD.actualizarPersona(261, pacienteC);
//Se imprimen los datos del paciente que se han procesado 
//desde la Clase Extendida Pacientefianado que recibe los datos de la clase Abstracta Paciente 
pacienteC.registrarDefuncion(); // Cambia el estatus del paciente a fallecido
pacienteC.imprimirDatosPaciente();

print('-----------------------------------------------');
print('-----------------------------------------------');
print('--- Operacion - DELETE (Eliminacion de los Datos) ---');
print('-----------------------------------------------');
// Operacion - DELETE (Eliminacion de los Datos)
operacionesCRUD.eliminarPersona(257);

}

//-------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------

// Declaracion para el tipo de usuario
enum usuario { Nuevo, Registrado, Finado }

// Declaracion para el Sexo del paciente
enum Genero { Masculino, Femenino}

// Declaración del enum para estatus de vida
enum EstatusVida { Vivo, Fallecido, Desconocido }

// Declaración del enum para estatus médico
enum EstatusMedico { Activo, Inactivo }

// tipos de Sangre
enum GrupoSanguineo { AP, AN, BP, BN, ABP, ABN, OP, ON, RHP, RHN }


//-------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------

// Declaracion de la clase abstracta Persona

// Esta es la estrucutura que se utilizara en todos los llamados
// donde se utilice la clase Persona
// Su propósito es servir como una base o plantilla para otras clases que la heredan,
// asegurando que las clases derivadas implementen ciertos comportamientos o propiedades. 
abstract class Persona {
  int id;
  String cortesyTitle;
  String nombre;
  String primer_apellido;
  String segundo_apellido;
  Genero genero;
  GrupoSanguineo grupoSanguineo;
  DateTime fechaNacimiento;
  String curp;
  String estatus;
  DateTime fechaRegistro;

  // Constructor de la clase Persona

  // en el contrucutor se implementan los datos requeridos
  // para la creacion de la persona.
  Persona({
    required this.id,
    required this.cortesyTitle,
    required this.nombre,
    required this.primer_apellido,
    required this.segundo_apellido,
    required this.genero,
    required this.grupoSanguineo,
    required this.fechaNacimiento,
    required this.curp,
    required this.estatus,
    required this.fechaRegistro,
  });

  //READ Lectura de la Informacion insertada
  // Método para imprimir los datos de la persona
  void imprimirDatosPersona() {
    print('Datos de la Persona $cortesyTitle $nombre $primer_apellido $segundo_apellido');
    print('fecha de Registro $fechaRegistro');
    print('-----------------------------------------------------------------------------');
    print('ID: $id');
    print('Nombre: $nombre');
    print('Primer Apellido: $primer_apellido');
    print('Segundo Apellido: $segundo_apellido');
    print('Género: ${genero.toString().split('.').last}'); // Implementacion del Enum para el Genero
    print('Grupo Sanguíneo: ${grupoSanguineo.toString().split('.').last}'); // Implementacion del Enum para el Tipo de Sangre
    print('Fecha de Nacimiento: ${fechaNacimiento.year}-${_twoDigits(fechaNacimiento.month)}-${_twoDigits(fechaNacimiento.day)}'); // Reconfigura los digitos de las fechas
    print('CURP: $curp');
    print('Estatus Médico: ${estatus.toString().split('.').last}'); // Seleccion Enum Para el Estatus de Vida del Paciente
    print('-----------------------------------------------------------------------------');
  }

  // Helper para formatear números de un solo dígito con un cero delante
  // Es útil para formatear fechas y horas, por ejemplo, en situaciones 
  //donde queremos que siempre se muestren dos dígitos, como en "08" 
  //para el mes de agosto o "05" para el día 5.
  String _twoDigits(int n) {
    return n >= 10 ? '$n' : '0$n';
  }
}

//--------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------

// Declaración de la clase Paciente que hereda de Persona

// La clase Paciente hereda de la clase Persona y se utiliza para crear objetos de tipo Paciente
// con propiedades específicas para el manejo de pacientes en un hospital.
class Paciente extends Persona {
  String nss;
  String tipoSeguro;
  EstatusVida estatusVida; // Se Asigna la Configuracion dada en el Enum para el Estatus de Vida
  String estatusMedico;
  DateTime fechaRegistro;
  DateTime fechaUltimaCita;
  Enum tipoUsuario; // Se Asigna la Configuracion dad en el Enum para el Tipo de Usuario Registrado

  // Constructor de la clase Paciente
  Paciente({
    required int id,
    required String cortesyTitle,
    required String nombre,
    required String primer_apellido,
    required String segundo_apellido,
    required Genero genero, // Aplicacion del Enum Para el Genero del Paciente
    required GrupoSanguineo grupoSanguineo, // Aplicacion del Enum Para Tipo Sanguineo Requerido
    required DateTime fechaNacimiento,
    required String curp,
    required String estatus,
    required this.nss,
    required this.tipoSeguro,
    required this.estatusVida,
    required this.estatusMedico,
    required this.fechaRegistro,
    required this.fechaUltimaCita,
    required this. tipoUsuario,
  }) 
  // con (): super) se llama al contructor padre (Paciente) 
  // heredado de (Persona), el constructor de la clase hija 
  //(Paciente) necesita asegurarse de que las propiedades 
  //definidas en la clase base (Persona) también se 
  //inicialicen correctamente.
    : super(
          id: id,
          cortesyTitle: cortesyTitle,
          nombre: nombre,
          primer_apellido: primer_apellido,
          segundo_apellido: segundo_apellido,
          genero: genero,
          grupoSanguineo: grupoSanguineo,
          fechaNacimiento: fechaNacimiento,
          curp: curp,
          estatus: estatus,
          fechaRegistro: fechaRegistro
        );
}

//--------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------

class NuevoPaciente extends Paciente {

  NuevoPaciente({
    required int id,
    required String cortesyTitle,
    required String nombre,
    required String primer_apellido,
    required String segundo_apellido,
    required Genero genero,
    required GrupoSanguineo grupoSanguineo,
    required DateTime fechaNacimiento,
    required String curp,
    required String estatus,
    required String nss,
    required String tipoSeguro,
    required EstatusVida estatusVida,
    required String estatusMedico,
    required DateTime fechaRegistro,
    required DateTime fechaUltimaCita,
    required usuario tipoUsuario,
  }) : super(
          id: id,
          cortesyTitle: cortesyTitle,
          nombre: nombre,
          primer_apellido: primer_apellido,
          segundo_apellido: segundo_apellido,
          genero: genero,
          grupoSanguineo: grupoSanguineo,
          fechaNacimiento: fechaNacimiento,
          curp: curp,
          estatus: estatus,
          nss: nss,
          tipoSeguro: tipoSeguro,
          estatusVida: estatusVida,
          estatusMedico: estatusMedico,
          fechaRegistro: fechaRegistro,
          fechaUltimaCita: fechaUltimaCita,
          tipoUsuario: tipoUsuario,
        );

  //(UPDATE) Actulizacion de la Informacion del Paciente

    // Sobrescribiendo el método imprimirDatosPersona de la clase Persona
    // la Sobre escritura permitira mostrar los datos en pantalla 
    // con la informacion de los tres pacientes.
  @override
  void imprimirDatosPersona() {
    super.imprimirDatosPersona(); // Llama al método original
    print('Paciente: ${tipoUsuario.toString().split('.').last}'); // Seleccion Enum
    print('Datos adicionales del paciente:');
    print('NSS: $nss');
    print('Tipo de Seguro: $tipoSeguro');
    print('Estatus de Vida: ${estatusVida.toString().split('.').last}'); // Seleccion Enum
    print('Estatus Médico: ${estatusMedico.toString().split('.').last}'); // Seleccion Enum
    print('Fecha de Registro: ${fechaRegistro.year}-${_twoDigits(fechaRegistro.month)}-${_twoDigits(fechaRegistro.day)}');
    print('-----------------------------------------------------------------------------');
  }

// (READ) Lectura de la Informacion del Paciente
  // Método para imprimir los datos del paciente
  void imprimirDatosPaciente() {
    imprimirDatosPersona();
    print('Fecha Última Cita: ${fechaUltimaCita.year}-${_twoDigits(fechaUltimaCita.month)}-${_twoDigits(fechaUltimaCita.day)}');
    print('-----------------------------------------------------------------------------');
  }

}


class PacienteRegistrado extends Paciente{
    PacienteRegistrado({
      required int id,
      required String cortesyTitle,
      required String nombre,
      required String primer_apellido,
      required String segundo_apellido,
      required Genero genero,
      required GrupoSanguineo grupoSanguineo,
      required DateTime fechaNacimiento,
      required String curp,
      required String estatus,
      required String nss,
      required String tipoSeguro,
      required EstatusVida estatusVida,
      required String estatusMedico,
      required DateTime fechaRegistro,
      required DateTime fechaUltimaCita,
      required usuario tipoUsuario,
    }) : super(
            id: id,
            cortesyTitle: cortesyTitle,
            nombre: nombre,
            primer_apellido: primer_apellido,
            segundo_apellido: segundo_apellido,
            genero: genero,
            grupoSanguineo: grupoSanguineo,
            fechaNacimiento: fechaNacimiento,
            curp: curp,
            estatus: estatus,
            nss: nss,
            tipoSeguro: tipoSeguro,
            estatusVida: estatusVida,
            estatusMedico: estatusMedico,
            fechaRegistro: fechaRegistro,
            fechaUltimaCita: fechaUltimaCita,
            tipoUsuario: tipoUsuario,
          );

      //(UPDATE) Actulizacion de la Inforacion de PERSONA

      // Sobrescribiendo el método imprimirDatosPersona de la clase Persona
      // la Sobre escritura permitira mostrar los datos en pantalla 
      // con la informacion de los tres pacientes.

    @override
    void imprimirDatosPersona() {
      super.imprimirDatosPersona(); // Llama al método original
      print('Paciente: ${tipoUsuario.toString().split('.').last}'); // Seleccion Enum
      print('Datos adicionales del paciente:');
      print('NSS: $nss');
      print('Tipo de Seguro: $tipoSeguro');
      print('Estatus de Vida: ${estatusVida.toString().split('.').last}'); // Seleccion Enum
      print('Estatus Médico: ${estatusMedico.toString().split('.').last}'); // Seleccion Enum
      print('Fecha de Registro: ${fechaRegistro.year}-${_twoDigits(fechaRegistro.month)}-${_twoDigits(fechaRegistro.day)}');
      print('-----------------------------------------------------------------------------');
    }

    //(READ) Lectura de los datos del Paciente

    // Método para imprimir los datos del paciente
    void imprimirDatosPaciente() {
      imprimirDatosPersona();
      print('Fecha Última Cita: ${fechaUltimaCita.year}-${_twoDigits(fechaUltimaCita.month)}-${_twoDigits(fechaUltimaCita.day)}');
      print('-----------------------------------------------------------------------------');
    }


  }

  class Pacientefinado extends Paciente{

    Pacientefinado({
      required int id,
      required String cortesyTitle,
      required String nombre,
      required String primer_apellido,
      required String segundo_apellido,
      required Genero genero,
      required GrupoSanguineo grupoSanguineo,
      required DateTime fechaNacimiento,
      required String curp,
      required String estatus,
      required String nss,
      required String tipoSeguro,
      required EstatusVida estatusVida,
      required String estatusMedico,
      required DateTime fechaRegistro,
      required DateTime fechaUltimaCita,
      required usuario tipoUsuario,
      required DateTime deceso
    }) : super(
            id: id,
            cortesyTitle: cortesyTitle,
            nombre: nombre,
            primer_apellido: primer_apellido,
            segundo_apellido: segundo_apellido,
            genero: genero,
            grupoSanguineo: grupoSanguineo,
            fechaNacimiento: fechaNacimiento,
            curp: curp,
            estatus: estatus,
            nss: nss,
            tipoSeguro: tipoSeguro,
            estatusVida: estatusVida,
            estatusMedico: estatusMedico,
            fechaRegistro: fechaRegistro,
            fechaUltimaCita: fechaUltimaCita,
            tipoUsuario: tipoUsuario,
          );

      //(UPDATE) Actulizacion de la Informacion de PERSONA
      // Sobrescribiendo el método imprimirDatosPersona de la clase Persona
      // la Sobre escritura permitira mostrar los datos en pantalla 
      // con la informacion de los tres pacientes.
    @override
    void imprimirDatosPersona() {
      super.imprimirDatosPersona(); // Llama al método original
      print('Paciente: ${tipoUsuario.toString().split('.').last}'); // Seleccion Enum
      print('Datos adicionales del paciente:');
      print('NSS: $nss');
      print('Tipo de Seguro: $tipoSeguro');
      print('Estatus de Vida: ${estatusVida.toString().split('.').last}'); // Seleccion Enum
      print('Estatus Médico: ${estatusMedico.toString().split('.').last}'); // Seleccion Enum
      print('Fecha de Registro: ${fechaRegistro.year}-${_twoDigits(fechaRegistro.month)}-${_twoDigits(fechaRegistro.day)}');
      print('-----------------------------------------------------------------------------');
    }

    // (READ) Lectuda de la Informacion del Paciente
    // Método para imprimir los datos del paciente
    void imprimirDatosPaciente() {
      imprimirDatosPersona();
      print('Fecha Última Cita: ${fechaUltimaCita.year}-${_twoDigits(fechaUltimaCita.month)}-${_twoDigits(fechaUltimaCita.day)}');
      print('-----------------------------------------------------------------------------');
    }


    // (UPDATE) Actualizacion del registro de la Persona Fallecida
    // Método para registrar la defunción del paciente
    void registrarDefuncion() {
      estatusVida = EstatusVida.Fallecido; // Seleccion de Enum
      print('Paciente ha sido marcado como fallecido.');
      estatusMedico = EstatusMedico.Inactivo.toString().split('.').last; //Seleccion de Enum
      tipoUsuario= usuario.Finado; // Seleccion de Enum
      fechaUltimaCita = DateTime(2023,5,7,17,30);
      DateTime deceso = DateTime.now();
      print("Fecha de Deceso: ${deceso.year}-${_twoDigits(deceso.month)}-${_twoDigits(deceso.day)}");
    }
  }
  
  //--------------------------------------------------------------------------------
  // Clase para las operaciones CRUD
  // Implements para El CRUD
  class OperacionesCRUD{

    // Se crea un Arreglo para almacenar las personas
    final List<Persona> _pacientes = [];
    // (_pacientes) solo puede ser accedido dentro del mismo archivo donde fue definido, 
    //  y no es accesible desde otros archivos 
    // (CREATE) Creación de un nuevo registro de Persona
    void crearPersona(Persona persona){
      _pacientes.add(persona);
       print('------------------------------------------------------------------');
       print('Paciente agregado: ${persona.nombre} ${persona.primer_apellido} ${persona.segundo_apellido}');
       print('------------------------------------------------------------------');
       print(' ');
    }

    // READ: Imprimir Todos los Pacientes
    void TodoPersonas(){
      print('------------------------------------------------------------------');
      print('Listado de Pacientes:');
      print('------------------------------------------------------------------');
      for (var persona in _pacientes){
        persona.imprimirDatosPersona();
      }
    }

    // UPDATE: Actualizar la Informacion de un Paciente
    void actualizarPersona(int id, Persona persona){
      final index = _pacientes.indexWhere((p) => p.id == id);
      if (index >= 0){
        _pacientes[index] = persona;
        print('------------------------------------------------------------------');
        print('Paciente actualizado: ${persona.nombre} ${persona.primer_apellido} ${persona.segundo_apellido}');
        print('------------------------------------------------------------------');
        print(' ');
      } else {
        print('------------------------------------------------------------------');
        print('Paciente no encontrado');
        print('------------------------------------------------------------------');
        print(' ');
      }
    }

    // DELETE: Eliminar un Paciente
    void eliminarPersona(int id){
    int posicion = _pacientes.length;
    _pacientes.removeWhere((paciente) => paciente.id == id);
    if (_pacientes.length < posicion) {
      print('Paciente con ID $id eliminado.');
    } else {
      print('Paciente con ID $id no encontrado. No se puede eliminar.');
    }
    }
    

  }