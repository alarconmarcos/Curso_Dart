import 'transporte.dart';

class Viagem {
  static String codigoTrabalho = "DJNADS12";
  double dinheiro = 0;
  Transporte locomocao;
  Set<String> registrosVisitados = <String>{};
  Map<String, dynamic> registrarPrecos = {};

  int _totalLocaisVisitados = 0;

  Viagem({required this.locomocao});

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

  void visitar(String localVisita) {
    registrosVisitados.add(localVisita);
    _totalLocaisVisitados += 1;
  }

  void registrarPrecoVisita(String local, dynamic preco) {
    registrarPrecos[local] = preco;
  }

  int get consultarTotalLocaisVisitados {
    return _totalLocaisVisitados;
  }

  void set alterarTotalLocaisVisitados(int novaQnt) {
    if (novaQnt < 10) {
      _totalLocaisVisitados = novaQnt;
    } else {
      print("Não é possível!");
    }
  }
}
