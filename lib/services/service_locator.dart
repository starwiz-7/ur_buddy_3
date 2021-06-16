import 'alternate_ad_miner_service.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

setupServiceLocator() {
  getIt.registerLazySingleton<AlternateAdMinerService>(() => AlternateAdMinerService());
}