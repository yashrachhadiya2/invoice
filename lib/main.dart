

import 'package:flutter/material.dart';
import 'package:untitled5/addData.dart';
import 'package:untitled5/billScreen.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Invoice(),
        'Second':(context) =>BillUi(),
      },
    ),
  );
}