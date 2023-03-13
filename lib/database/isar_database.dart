import 'package:isar/isar.dart';
import 'package:open_fashion/database/entities/account_entity.dart';
import 'package:path_provider/path_provider.dart';

class IsarDatabase {
  IsarDatabase();
  Isar? isar;

  static List<CollectionSchema<dynamic>> schemas = [AccountSchema];
  Future<void> init() async {
    var dir = await getApplicationSupportDirectory();
    isar ??= await Isar.open(
      schemas,
      name: "db",
      directory: dir.path,
    );
  }
}
