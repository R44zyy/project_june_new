import 'package:sqflite/sqflite.dart' as sql;
class sqlFunction{
  static Future<sql.Database> createDB() async{
    return sql.openDatabase('user.db',version: 1,
        onCreate: (sql.Database database,int version) async{
      await createTable(database);
    });
  }

  static Future<void> createTable(sql.Database database) async{
    await database.execute("""Create Table registration (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    name TEXT,
    email TEXT,
    password TEXT)
    """);
  }

  static createUser(String name, String email, String pwd) async{
    final db = await sqlFunction.createDB();
    final userData = {'name':name,'email':email,'password':pwd};
    final id = await db.insert('registration', userData);
    return id;
  }


}