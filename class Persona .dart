class Persona {
  String nombre;
  String apellido;
  int edad;
  String telefono;
  String email;

  // Constructor
  Persona(this.nombre, this.apellido, this.edad, this.telefono, this.email);

  // Método toString
  @override
  String toString() {
    return 'Persona: $nombre $apellido, Edad: $edad, Teléfono: $telefono, Email: $email';
  }
}

class Animal {
  String raza;
  Persona propietario;
  String fechaNacimiento;
  List<String> vacunas;

  // Constructor
  Animal(this.raza, this.propietario, this.fechaNacimiento, this.vacunas);

  // Método toString
  @override
  String toString() {
    return 'Animal: $raza, Propietario: ${propietario.nombre} ${propietario.apellido}, Fecha de Nacimiento: $fechaNacimiento, Vacunas: ${vacunas.join(', ')}';
  }
}

void main() {
  // Instanciando la clase Persona
  Persona persona1 = Persona("Jaison", "noriega", 30, "3005694411", "jaison.noriega@example.com");

  // Instanciando la clase Animal
  Animal animal1 = Animal("Labrador", persona1, "2020-03-01", ["Rabia", "tetano"]);

  // Imprimiendo las instancias
  print(persona1);
  print(animal1);
}