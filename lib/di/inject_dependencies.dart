import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

void setupServiceLocator() {
  /*
  // Register the repository as a singleton
  getIt.registerLazySingleton<UnitRepository>(() => LocalUnitRepository());
  getIt.registerLazySingleton<EmployeeRepository>(() => LocalEmployeeRepository());

  // Register the ViewModel, depending on the repository
  getIt.registerFactory<UploadFileViewmodel>(() => UploadFileViewmodel(getIt<UnitRepository>()));
  getIt.registerFactory<HomeViewModel>(() => HomeViewModel(getIt<UnitRepository>(), getIt<EmployeeRepository>()));
  getIt.registerFactory<SearchViewModel>(() => SearchViewModel(getIt<EmployeeRepository>()));*/
}