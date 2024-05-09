import 'dart:js';

import 'package:bag_project/Component/Homepage.dart';
import 'package:bag_project/Router/RouterPath.dart';
import 'package:flutter/material.dart';


MaterialPageRoute? materialPageRoute(RouteSettings settings){
  Widget? widget;
  switch(settings.name){
    case RouterPath.homepath:
      widget = const Homepage();
      break;

  }
  if(widget !=null){
    return MaterialPageRoute(builder: (context)=>widget!);
  }

  return null;
}