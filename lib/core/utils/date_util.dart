String getTextDate() {
  DateTime fechaPasada = DateTime(2025, 01, 13);
  DateTime fechaActual = DateTime.now();
  int anios = fechaActual.year - fechaPasada.year;

  int meses = fechaActual.month - fechaPasada.month;
  int dias = fechaActual.day - fechaPasada.day;

  if (dias < 0) {
    meses -= 1;
    DateTime mesAnterior =
        DateTime(fechaActual.year, fechaActual.month - 1, fechaPasada.day);
    dias = fechaActual.difference(mesAnterior).inDays;
  }

  if (meses < 0) {
    anios -= 1;
    meses += 12;
  }

  var anioText = anios != 0 ? '$anios ${anios == 1 ? 'año' : 'años'}, ' : '';
  var mesText = meses != 0 ? "$meses ${meses == 1 ? 'mes' : 'meses'} y " : '';
  var diaText = '$dias ${dias == 1 ? 'día' : 'días'}';

  return "$anioText$mesText$diaText";
}
