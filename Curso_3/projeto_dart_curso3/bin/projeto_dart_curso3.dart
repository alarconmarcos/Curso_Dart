import 'transporte.dart';
import 'viagem.dart';

void main() {
  Viagem viagemMaio = Viagem(locomocao: Transporte.aviao);
  print(viagemMaio.consultarTotalLocaisVisitados);
  viagemMaio.visitar("Museu");
  print(viagemMaio.consultarTotalLocaisVisitados);
  viagemMaio.alterarTotalLocaisVisitados = 100;
  print(viagemMaio.consultarTotalLocaisVisitados);
}
