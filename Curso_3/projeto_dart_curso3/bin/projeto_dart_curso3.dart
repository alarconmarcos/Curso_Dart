void main() {
  escolherMeioTransporte(Transporte.skate);

  List<Transporte> transportes = Transporte.values;

  Set<String> registrosVisitados = <String>{};
  registrosVisitados = registrarDestinos("São Paulo", registrosVisitados);
  registrosVisitados = registrarDestinos("Recife", registrosVisitados);
  registrosVisitados = registrarDestinos("Rio de Janeiro", registrosVisitados);
  registrosVisitados = registrarDestinos("São Paulo", registrosVisitados);

  print(registrosVisitados);
}

Set<String> registrarDestinos(String destino, Set<String> banco) {
  banco.add(destino);
  return banco;
}

void escolherMeioTransporte(Transporte locomocao) {
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
