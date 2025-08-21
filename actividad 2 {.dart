class Persona {
  String nombre;
  String apellido;
  int edad;

  // Constructor normal
  Persona(this.nombre, this.apellido, this.edad) {
    // Uso de asserts para validar la edad
    assert(edad >= 0, 'La edad no puede ser negativa');
    if (edad >= 18) {
      print('$nombre $apellido es mayor de edad.');
    }
  }

  // Constructor por nombre (ApiData)
  Persona.apiData(Map<String, dynamic> data)
      : nombre = data['nombre'],
        apellido = data['apellido'],
        edad = data['edad'] {
    // Uso de asserts para validar la edad
    assert(edad >= 0, 'La edad no puede ser negativa');
    if (edad >= 18) {
      print('$nombre $apellido es mayor de edad.');
    }
  }

  // Sobreescritura del método toString
  @override
  String toString() {
    return 'Persona: Nombre: $nombre, Apellido: $apellido, Edad: $edad';
  }
}

void main() {
  // Instanciación usando el constructor normal
  Persona persona1 = Persona('Jaison', 'Noriega', 22);
  print(persona1.toString());

  // Instanciación usando el constructor por nombre (ApiData)
  Map<String, dynamic> data = {
    'nombre': 'Nalialis',
    'apellido': 'Zuñiga',
    'edad': 17
  };
  Persona persona2 = Persona.apiData(data);
  print(persona2.toString());
}