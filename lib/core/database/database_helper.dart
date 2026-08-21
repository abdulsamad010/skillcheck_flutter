import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
class DatabaseHelper{
  static Database? db;

  static Future<void> createDb() async{

    if(db!=null){
      return;
    }

    db=await openDatabase(
      join(await getDatabasesPath(),'skillcheck.db'),
      version: 1,
      onCreate: (db,version) async{
        await db.execute(
          '''
          CREATE TABLE PROFILE(
          NAME TEXT NOT NULL,
          EDUCATION TEXT NOT NULL,
          PROFESSION TEXT NOT NULL
          )
          '''
        );

        await db.execute(
            '''
          CREATE TABLE QUIZ(
          QUIZ_NO INTEGER PRIMARY KEY AUTOINCREMENT,
          CATEGORY_NAME TEXT NOT NULL,
          SKILL_NAME TEXT NOT NULL,
          MARKS INTEGER NOT NULL,
          IS_PASS INTEGER NOT NULL
          )
          '''
        );
      }
    );
  }

  static Future<void> insertProfile(String name,String education,String profession) async{
    await createDb();
    await db!.insert('PROFILE', {
      'NAME':name,
      'EDUCATION': education,
      'PROFESSION': profession,
    });
  }

  static Future<void> insertQuiz(String categoryName, String skillName, int marks, int isPass,) async {
    await createDb();
    await db!.insert(
      'QUIZ',
      {
        'CATEGORY_NAME': categoryName,
        'SKILL_NAME': skillName,
        'MARKS': marks,
        'IS_PASS': isPass,
      },
    );
  }

  static Future<void> updateProfile(String name,String education,String profession) async{
    await createDb();
    await db!.update('PROFILE', {
      'NAME':name,
      'EDUCATION': education,
      'PROFESSION': profession,
    });
  }

  static Future<void> deleteProfile() async{
    await createDb();
    await db!.delete('PROFILE');
    await db!.delete('QUIZ');
  }

  static Future<List<Map<String,dynamic>>> readProfile() async{
    await createDb();
    return await db!.query('PROFILE');
  }

  static Future<List<Map<String,dynamic>>> readQuiz() async{
    await createDb();
    return await db!.query('QUIZ');
  }
}