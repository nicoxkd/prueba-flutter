//Creamos la clase Persona
class Persona {
  String nombre;
  int edad;
  
  //Constructor de Persona que usa como parametros nombre y edad
  Persona(this.nombre, this.edad);

  //Constructor de una persona desconocida
  Persona.defecto() : nombre = 'Desconocido', edad = 0;

  //Constructor en caso de que meta como parametro 0 o menos en la edad
  factory Persona.fabrica(int edad){
    if (edad <=0){
      throw ArgumentError('La edad debe ser mayor que 0');
    }
    return Persona('Persona con edad $edad',edad);
  }

  // Metodo que muestra la información de la persona
  void mostrarInfo(){
    print("Me llamo $nombre y tengo $edad años");
  }
}


//Clase Empleado que extiende de Persona
class Empleado extends Persona {
  String puesto;
  double salario;

  //Constructor de un empleado con todos sus parametros
  Empleado(nombre, edad, this.puesto, this.salario) : super(nombre, edad);


  //Metodo sobrescrito de Persona, donde mostramos todo
  @override
  void mostrarInfo(){
    super.mostrarInfo();
    print("Puesto: $puesto, Salario: $salario");
    tipoSalario();
  }

  //Metodo para saber el tipo de salario del Empleado
  void tipoSalario(){
    if (salario <1200) {
      print("El salario es bajo");
    } else if (salario<1700) {
      print("El salario es medio");
    } else {
      print("El salario es alto");
    }
  }
}

void main(){

  //Pruebas de clase Persona con sus diferentes constructores
  Persona persona1 = Persona('Manolo', 30);
  persona1.mostrarInfo();
  Persona persona2 = Persona.defecto();
  persona2.mostrarInfo();
  Persona persona3 = Persona.fabrica(10);
  persona3.mostrarInfo();


  //Prueba 1 de la clase empleado 
  Empleado empleado1 = Empleado('Paco', 34, 'Informatico', 1600);
  empleado1.mostrarInfo();
  empleado1.tipoSalario();

  //Prueba 2 de la clase empleado con lista
  Empleado empleado2 = Empleado('Juan',23, 'Becario', 1100);
  Empleado empleado3 = Empleado('Ana', 34, 'Gerente', 3200);
  Empleado empleado4 = Empleado('Jaime', 19, 'Becario', 900);
  Empleado empleado5 = Empleado('Carlos', 39, 'Director', 5200);

  List<Empleado> empleados = [empleado1, empleado2, empleado3, empleado4, empleado5];

  empleados.forEach((n){
    n.mostrarInfo();
  });
}