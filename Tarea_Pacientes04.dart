

void main() {

  // Caso 1: Nuevo Paciente registrado hoy, 
  // con la descipcion del paciente.
  final paciente1 = Paciente(
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
  //desde la Clase Paciente y la clase Abstracta Paciente 
    paciente1.imprimirDatosPaciente();
//-------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------
  // Caso 2: Paciente que fue trabajador del hospital con fecha de registro anterior
  // los datos del trabajador exitente en la base de datos son:
  final paciente2 = Paciente(
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
  //desde la Clase Paciente y la clase Abstracta Paciente 
  paciente2.imprimirDatosPaciente();

//-------------------------------------------------------------------------------------
  // Caso 3: Paciente que acaba de fallecer
  final paciente3 = Paciente(
    id: 258,
    cortesyTitle: "Sra.",
    nombre: 'Daniela',
    primer_apellido: 'Lopez',
    segundo_apellido: 'Marquez',
    genero: Genero.Masculino,
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
    tipoUsuario: usuario.Registrado
  );
    //Se imprimen los datos del paciente que se han procesado 
    //desde la Clase Paciente y la clase Abstracta Paciente 
    paciente3.registrarDefuncion(); // Cambia el estatus del paciente a fallecido
    //  datos del paciente 3 después de su defunción
    paciente3.imprimirDatosPaciente();

  

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
  Enum estatusVida; // Se Asigna la Configuracion dada en el Enum para el Estatus de Vida
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


  // Método para imprimir los datos del paciente
  void imprimirDatosPaciente() {
    imprimirDatosPersona();
    print('Fecha Última Cita: ${fechaUltimaCita.year}-${_twoDigits(fechaUltimaCita.month)}-${_twoDigits(fechaUltimaCita.day)}');
    print('-----------------------------------------------------------------------------');
  }

  // Método para registrar la defunción del paciente
  void registrarDefuncion() {
    estatusVida = EstatusVida.Fallecido; // Seleccion de Enum
    estatusMedico = EstatusMedico.Inactivo.toString().split('.').last; //Seleccion de Enum
    tipoUsuario= usuario.Finado; // Seleccion de Enum
  }
}
