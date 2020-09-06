import 'package:flutter/material.dart';
import 'package:simple_bloc/ui/screens/home.dart';
import 'package:simple_bloc/util/get_it.dart';

void main() {
  ///  WidgetsFlutterBinding.ensureInitialized();
  /// make sure to add the above line if one of your blocs have asyn actions like reading theme or token from the device , or fetching translation json

  //instatiate your singleton here
  new GetItInstance();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
