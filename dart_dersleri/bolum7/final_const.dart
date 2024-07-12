/*
bazı durumlarda değişmez değerlere ihtiyaç duyabiliriz. bir değer atadıktan sonra bu değerin
sonradan değiştirilmesini istemiyorsak final ve const anahtar kelimeleri ile değişkenlerimi tanımlarız.

kullanım ve amaçları aynı olan bu iki kavramın farkı :
final : değer atandıktan sonra, bellekte yer ayrılması sadece erişilirse olur. final verilerin değerleri değişebilir, veri tipleri değiştirilemez.
const : bu da aslında final'dir ama derleme anında değer atanır ve bellekte yeri ayrılır, hiç kullanılmasa bile... Veri tipi de içindeki değer de sonradan değiştirilemez. 

burada veri türü belirtilebilir ama isteğe bağlıdır, yani belirtilmese de olur.

En önemli fark ise instance değişkenler sadece final olarak tanımlanır, const ile tanımlanamaz.
const ile tanımlanması için static const olmalıdır.

 */
//IMMUTABLE DEGISMEZ
main(List<String> args) {
  /*
  var str = "emre";
  str = "altunbilek";

 
  final String str2 = "emre";
  str2 = "altunbilek";

  const String str3 = "emre";
  str3 = "altunbilek";
  */

/*
  const sayi = 5;
  final sayi2 = 10;

  final tarih = DateTime.now();
  const tarih2 = DateTime.now();*/

  /*  final liste = [1, 2, 3];
  final liste2 = [1, 2, 3];

  liste.add(4);
  liste2.add(8);

  liste = [5, 6]; */

  //canonicalized
  const liste = [1, 2];
  const liste2 = [1, 2];
  const liste3 = [1, 2];

  

  if (liste == liste2) {
    print("eşit");
  } else {
    print("eşit değil");
  }
}
