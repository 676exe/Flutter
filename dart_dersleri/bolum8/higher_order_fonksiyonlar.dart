/**
 * Higher order functions : bir fonksiyonu parametre olarak alan veya geriye fonksiyon döndüren fonksiyonlardır.
 * Tabi ikisi aynı anda da yapabilir.
 * 
 */

main(List<String> args) {
  List<int> liste = [1, 2, 3];
  /* liste.forEach((element) {
    print("Element $element");
  }); */

  liste.forEach(callback);

  kendiForEachyapim(liste, (int deger, int index) {
    print("Değer $deger ve index $index");
  });
}

void kendiForEachyapim(List<int> liste, Function callback) {
  for (int i = 0; i < liste.length; i++) {
    callback(liste[i], i );
  }
}

void ismimiSoyle(String name) {
  print(name);
}

void callback(int element) {
  print("Element $element");
}
