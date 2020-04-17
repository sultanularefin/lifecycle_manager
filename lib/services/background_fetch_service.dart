

import 'package:lifecycle_manager/services/stopable_service.dart';

class BackgroundFetchService extends StopableService{

  @override
  void start(){
    super.start();

    // start listening.
    print('BackgroundFetchService Started:  ${!serviceStopped}');
  }


  @override
  void stop(){
    super.stop();

    // stop listening.
    print('BackgroundFetchService Stopped: $serviceStopped');
  }

}