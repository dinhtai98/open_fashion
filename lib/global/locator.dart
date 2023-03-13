import 'package:get_it/get_it.dart';
import 'package:open_fashion/database/isar_database.dart';
import 'package:open_fashion/global/global_data.dart';
import 'package:open_fashion/global/locator_dao.dart';
import 'package:open_fashion/global/locator_service.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  locator.registerLazySingleton(() => IsarDatabase());
  locator.registerLazySingleton(() => GlobalData());
  await locator<IsarDatabase>().init();
  registerDaoSingletons(locator);
  registerServiceSingletons(locator);
}
