void main() {}

void escolherMeioTransporte(int locomocao) {
  if (locomocao == 0) {
    print("Vou de CARRO para aventura!");
  } else if (locomocao == 1) {
    print("Vou de BIKe para aventura!");
  } else {
    print("Vou para aventura!");
  }
}

void escolherMeioTransporteEnum(Transporte locomocao) {
  switch (locomocao) {
    case Transporte.carro:
      print("Vou de CARRO para aventura!");
      break;
    case Transporte.aviao:
      print("Vou de AVIAO para aventura!");
      break;
    case Transporte.bike:
      print("Vou de BIKe para aventura!");
      break;
    default:
      print("Vou para aventura!");
      break;
  }
}

enum Transporte {
  carro,
  bike,
  andando,
  skate,
  aviao,
  barco,
  onibus,
  trem,
  metro,
  helicoptero
}
