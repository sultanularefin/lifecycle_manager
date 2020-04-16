
import 'package:flutter/cupertino.dart';

abstract class StopableService {

  bool _serviceStopped =false;
  bool get serviceStopped => _serviceStopped;



  @mustCallSuper
  void stop(){

    _serviceStopped = true;
  }

  // tag.
  @mustCallSuper
  void start(){
    _serviceStopped =false;

  }
}
