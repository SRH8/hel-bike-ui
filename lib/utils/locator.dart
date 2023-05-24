import 'package:get_it/get_it.dart';
import 'package:hel_bike_ui/service/navigation/navigation_service.dart';

GetIt locator = GetIt.instance;

void setUpLocator() {
  locator.registerLazySingleton(() => NavigationService());
}