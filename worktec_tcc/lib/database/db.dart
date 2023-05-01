import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
class DB {
  //construtor privado
  DB._();
  //criar instancia DB
  static final DB instance = DB._();
  //instancia do SQLite
  static Database? _database;

  get database async {
    if(_database != null) return _database;

    return await _initDatabase();
  }

  _initDatabase() async{
    return await openDatabase(
      join(await getDatabasesPath(), 'worktec.db'),
      version: 1,
      onCreate: _onCreate,
    );
  }

  _onCreate(db, versao) async {
    await db.execute(_tb_curso);
    await db.execute(_tb_materia);
    await db.execute(_tb_orientador);
    await db.execute(_tb_tcc);
    await db.execute(_tb_aluno);
  }

  String get _tb_curso => ''' 
    CREATE TABLE tb_curso (
      id_curso TEXT PRIMARY KEY AUTOINCREMENT,
      nome TEXT NOT NULL
    );
  ''';

  String get _tb_materia => '''
    CREATE TABLE tb_materia(
      id_materia TEXT PRIMARY KEY AUTOINCREMENT,
      id_curso TEXT NOT NULL,
      nome TEXT NOT NULL,
      CONSTRAINT fk_id_curso FOREIGN KEY (id_curso) REFERENCES tb_curso(id_curso)
    );
 ''';

  String get _tb_orientador=> '''
    CREATE TABLE tb_professor(
      id_professor TEXT PRIMARY KEY AUTOINCREMENT,
      nome TEXT NOT NULL,
      id_curso TEXT NOT NULL,
      id_materia TEXT NOT NULL,
      CONSTRAINT fk_id_curso FOREIGN KEY (id_curso) REFERENCES tb_curso(is_curso),
      CONSTRAINT fk_id_materia FOREIGN KEY (id_materia) REFERENCES tb_materia(id_materia)
    );
 ''';

  String get _tb_aluno=> '''
    CREATE TABLE tb_aluno(
      nome TEXT NOT NULL,
      id_aluno TEXT PRIMARY KEY AUTOINCREMENT,
      id_curso TEXT,
      email TEXT,
      CONSTRAINT fk_id_curso FOREIGN KEY (id_curso) REFERENCES tb_curso(id_curso)
    );
 ''';


  String get _tb_tcc=> '''
    CREATE TABLE tb_tcc(
      id_tcc TEXT PRIMARY KEY AUTOINCREMENT,
      id_orientador TEXT NOT NULL,
      id_coorientador TEXT,
      data TEXT NOT NULL,
      id_aluno1 TEXT NOT NULL,
      id_aluno2 TEXT,
      id_aluno3 TEXT,
      id_aluno4 TEXT,
      CONSTRAINT fk_id_orientador FOREIGN KEY (id_orientador) REFERENCES tb_professor(id_professor),
      CONSTRAINT fk_id_coorientador FOREIGN KEY (id_coorientador) REFERENCES tb_professor(id_professor),
      CONSTRAINT fk_id_aluno1 FOREIGN KEY (id_aluno1) REFERENCES tb_aluno(id_aluno),
      CONSTRAINT fk_id_aluno2 FOREIGN KEY (id_aluno2) REFERENCES tb_aluno(id_aluno),
      CONSTRAINT fk_id_aluno3 FOREIGN KEY (id_aluno3) REFERENCES tb_aluno(id_aluno),
      CONSTRAINT fk_id_aluno4 FOREIGN KEY (id_aluno4) REFERENCES tb_aluno(id_aluno)
    );
 ''';

}