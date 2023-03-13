import 'package:get_it/get_it.dart';
import 'package:open_fashion/services/implements/account_service.dart';
import 'package:open_fashion/services/interfaces/iaccount_service.dart';

void registerServiceSingletons(GetIt locator) {
  locator.registerLazySingleton<IAccountService>(() => AccountService());
}
