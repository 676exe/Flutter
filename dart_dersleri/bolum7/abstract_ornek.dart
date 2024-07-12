main(List<String> args) {
  Veritabani db = OracleDB();

  db.userDelete();
  db.userSave();

  userGuncelle(db);
}

void userGuncelle(Veritabani veritabani) {
  veritabani.userUpdate();
}

abstract class Veritabani {
  void userSave();
  void userUpdate();
  void userDelete();

  void urunGuncelle();
}

class OracleDB extends Veritabani {
  @override
  void userDelete() {
    print("oracle dbden user silindi");
  }

  @override
  void userSave() {
    print("oracle dbye user kaydedildi");
  }

  @override
  void userUpdate() {
    print("oracle dbdeki user güncellendi");
  }

  @override
  void urunGuncelle() {
    // TODO: implement urunGuncelle
  }
}

class FirebaseDB extends Veritabani {
  @override
  void userDelete() {
    print("firebase dbden user silindi");
  }

  @override
  void userSave() {
    print("firebase dbye user kaydedildi");
  }

  @override
  void userUpdate() {
    print("firebase dbdeki user güncellendi");
  }

  @override
  void urunGuncelle() {
    // TODO: implement urunGuncelle
  }
}
