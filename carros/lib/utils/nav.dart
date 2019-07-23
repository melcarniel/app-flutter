import 'package:flutter/material.dart';

push(context, page){
 return Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
    return page;
  }));
}

pushReplace(context, page){
 return Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) {
    return page;
  }));
}

pop(context, params){
  return Navigator.pop(context, params);
}