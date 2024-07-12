/*
Sınıflarımızda nesne üretmeden bazı değişkenlere ve methodlara erişmek isteyebiliriz. burada karsımıza static kavramı cıkar.

Static kullanarak nesne değil sınıf değişkenleri ve methodları olusturabilirz.
Bir sınıfta tanımlanan method ve değişkenlere erişirken mutlaka nesne üretmemiz gerekirdi. Ama biz bunları static olarak tanımlarsak
artık nesne üretmeden bu değerlere erişebilir ve kullanabiliriz. Artık onlar nesnelerin değil sınıfın method ve değişkenleridir.

ayrıca statik degiskenler kullanılana kadar deger almazlar, bellekte yer ayrılmaz
statik methodların içinde this anahtar kelimesi kullanılmaz.

static metotlar içinden nesneye özgü alanlara erişilemezken, nesneye özgü metot içinden static değerlere erişilebilir.
 */

main(List<String> args) {
  Matematik m1 = Matematik(50, 20);
  m1.topla();
  m1.topla();
  m1.topla();
  m1.topla();
  m1.cikar();

  Matematik m2 = Matematik(30, 10);
  m2.topla();
  m2.cikar();
  m2.cikar();
  m2.cikar();
  m2.cikar();

  Matematik m3 = Matematik(10, 5);
  m3.topla();
  m3.cikar();
  m3.cikar();
  m3.cikar();
  m3.cikar();

  print(Matematik.PI);
  Matematik.sinifAdiniSoyle();

  print("Toplam işlem sayısı ${Matematik.toplamIslemSayisi}");
}

class Matematik {
  //instance variable
  int birinciSayi = 0;
  int ikinciSayi = 0;
  static int toplamIslemSayisi = 0;

  //class variable, sınıf değişkeni
  static double PI = 3.14;
  static void sinifAdiniSoyle() {
    print("Ben matematik sınıfıyım");
  }

  Matematik(this.birinciSayi, this.ikinciSayi);

  void topla() {
    sinifAdiniSoyle();
    toplamIslemSayisi++;
    print("Toplam ${birinciSayi + ikinciSayi}");
  }

  void cikar() {
    toplamIslemSayisi++;
    print("Toplam ${birinciSayi - ikinciSayi}");
  }
}
