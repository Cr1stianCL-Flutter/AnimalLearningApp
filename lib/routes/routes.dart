import 'package:flutter/material.dart';

import 'package:baby_learning_app/pages/index/index.dart';

Map<String,WidgetBuilder> getAplicationRoutes(){
  return <String, WidgetBuilder>{
    //'/': (BuildContext context) => LoginPage(),    
    '/': (BuildContext context) => IndexPage(),    
  };
}
