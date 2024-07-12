import 'dart:math';

main(List<String> args) {
  try {
    double deger = kareKokunuAl(-20);
    print("Değer ${deger.toStringAsFixed(2)}");
  } on FormatException catch (e) {
    print(e.message);
  } catch (e) {
    print(e);
  }
}

double kareKokunuAl(int i) {
  try {
    if (i < 0) {
      throw FormatException("Sayı negatif olamaz ");
    } else
      return sqrt(i);
  } on FormatException catch (e) {
    print(e.message + "metot içindeyim");
  } finally {
    return 0;
  }
}
