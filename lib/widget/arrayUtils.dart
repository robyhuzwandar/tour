import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:playground_project/DataMock.dart';
import 'package:playground_project/utils/mapping.dart';

class ArrayUtils extends StatefulWidget {
  @override
  _ArrayUtilsState createState() => _ArrayUtilsState();
}

class _ArrayUtilsState extends State<ArrayUtils> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: mapping(
            data2, (index, value){
              return list(value);
            }
          )
          // children: mapping<Widget>(
          //   data, (index, value){
          //     print(value.lessonId);
          //     if(value.lessonId.contains("f3488686-2f5e-4f60-a7d7-1ecb6dec7e65")){
          //       return Text('ADA ${value.lessonId}');
          //     } else {
          //       return Text('KAGAK ADA ${value.lesson_id}',);
          //     }
          //   }
          // )
        ),
      ),
    );
  }

  list(value){
    dynamic list = data.where((item) => item.lessonId == value.lessonId);
    if(list.length > 0){
      return Text('ADA');
    }else{
      return Text('KAGAK ADA');
    }
  }
}