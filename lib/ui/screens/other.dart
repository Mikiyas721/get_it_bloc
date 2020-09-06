import 'package:flutter/material.dart';
import 'package:simple_bloc/data/model/appstate.dart';
import 'package:simple_bloc/util/get_it.dart';

final _appstate = getIt.get<AppState>();

class OtherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Other"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Text("Values from other screen"),
          StreamBuilder<int>(
              stream: _appstate.counterStream,
              builder: (context, snapshot) {
                return Text(
                  "${snapshot.data}",
                  style: TextStyle(fontSize: 30),
                );
              }),
        ],
      ),
    );
  }
}
