abstract class Moto {
  void arrancar();
  void frenar();

  void infoGeneral() {
    print("Todas las motos tienen dos llantas (normalmente).");
  }
}


mixin MotorMixin {
  void encenderMotor() {
    print("Motor encendido.");
  }

  void apagarMotor() {
    print("Motor apagado.");
  }
}


class MotoDeportiva extends Moto with MotorMixin {
  @override
  void arrancar() {
    print("Moto arrancando con fueza y velocidad.");
  }

  @override
  void frenar() {
    print("Sistema de frenos discos.");
  }
}

void main() {
  var moto = MotoDeportiva();
  moto.infoGeneral();
  moto.encenderMotor();
  moto.arrancar();
  moto.frenar();
  moto.apagarMotor();
}

