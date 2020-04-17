import 'package:flutter/material.dart';
import 'package:lifecycle_manager/locator.dart';
import 'package:lifecycle_manager/services/stopable_service.dart';


import 'package:lifecycle_manager/services/locatoin_service.dart';
import 'package:lifecycle_manager/services/background_fetch_service.dart';


class LifeCycleManager extends StatefulWidget {

  final Widget child;

  LifeCycleManager({Key key, this.child}) : super(key: key);


//  LifeCycleManager({key:Key,this.child}):
//        super(key:key);
  _LifeCycleManagerState createState() => _LifeCycleManagerState();

}

class _LifeCycleManagerState extends
State<LifeCycleManager> with WidgetsBindingObserver
{

  List<StopableService> servicesToManage = [
    locator<LocationService>(),
    locator<BackgroundFetchService>(),
  ];
  // Get all services.

  @override
  Widget build (BuildContext context){
//    return Container(
//      child:child,
//    )

  print(" at _LifeCycleManagerState\'s build method");

  return widget.child;
  }


  @override
  void initState(){
    print(" at _LifeCycleManagerState\'s init method");
    // TODO: implement initState
    super.initState();

    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    print(" at _LifeCycleManagerState\'s dispose method");
    // TODO: implement dispose
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }



  @override
  void didChangeAppLifecycleState(AppLifecycleState state){

    print(" at _LifeCycleManagerState\'s didChangeAppLifecycleState method");
    super.didChangeAppLifecycleState(state);

    print('LifeCycleState = $state');

    servicesToManage.forEach((service)
    {

      // AppLifeCycleState
      if(state == AppLifecycleState.resumed) {
        print('before service.start() at '
            ' _LifeCycleManagerState\'s  didChangeAppLifecycleState method ');
        service.start();
      }
      else{
        print('before service.stop() at '
            ' _LifeCycleManagerState\'s  didChangeAppLifecycleState method ');
        service.stop();
      }
    });
    // If background.
  }

}