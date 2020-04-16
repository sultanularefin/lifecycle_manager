

import 'package:lifecycle_manager/services/stopable_service.dart';

class LocationService extends StopableService{
  @override
  void start(){
    super.start();
    print('LocationService Started $serviceStopped');
  }


  @override
  void stop(){
    super.stop();
    print('LocationService Stopped $serviceStopped');

  }
}