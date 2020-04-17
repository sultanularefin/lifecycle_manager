
import 'package:lifecycle_manager/services/background_fetch_service.dart';
import 'package:lifecycle_manager/services/locatoin_service.dart';


import 'package:get_it/get_it.dart';

//GetIt locator = GetIt();

GetIt locator = GetIt.instance;

void setupLocator(){

  print("At setup Locator");


  print(" It contains: LocationService && BackgroundFetchService " );

  locator.registerLazySingleton(()=>LocationService());
  locator.registerLazySingleton(()=>BackgroundFetchService());
}