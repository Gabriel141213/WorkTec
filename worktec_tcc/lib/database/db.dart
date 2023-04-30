class DB {
  //construtor privado
  DB._();
  //criar instancia DB
  static final DB instance = DB._();
  //instancia do SQLite
  static Database? _database;
}