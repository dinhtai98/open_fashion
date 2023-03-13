import 'package:get_it/get_it.dart';
import 'package:open_fashion/database/daos/account_dao.dart';

void registerDaoSingletons(GetIt locator) {
  locator.registerLazySingleton(() => AccountDao());
}
