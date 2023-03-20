void main() {
  escolherMeioTransporte(Transporte.skate);

  List<Transporte> transportes = Transporte.values;

  Set<String> registrosVisitados = <String>{};
  registrosVisitados = registrarDestinos("São Paulo", registrosVisitados);

  Map<String, dynamic> registrarPrecos = {};

  registrarPrecos["São Paulo"] = 1200;
  registrarPrecos["Rio de Janeiro"] = 1500;
  registrarPrecos["Nova York"] = "Muito caro!";

  print(registrarPrecos);

  dynamic meuNumero = 7.1;
  print(meuNumero.runtimeType);
  meuNumero = "String Qualquer";
  print(meuNumero.runtimeType);

  Viagem viagemHoje = Viagem();
  viagemHoje.codigoTrabalho;
}

class Viagem {
  static String codigoTrabalho = "DJNADS12";
  double dinheiro = 0;
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
