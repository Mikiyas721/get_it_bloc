import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_bloc/data/model/appstate.dart';
import 'package:simple_bloc/ui/screens/other.dart';
import 'package:simple_bloc/util/get_it.dart';

final _appstate = getIt.get<AppState>();

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          StreamBuilder<int>(
              stream: _appstate.counterStream,
              builder: (context, snapshot) {
                return Text(
                  "${snapshot.data}",
                  style: TextStyle(fontSize: 30),
                );
              }),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              CupertinoButton(
                  child: Text("Increment"),
                  onPressed: () {
                    _appstate.increament();
                  }),
              SizedBox(
                width: 20,
              ),
              CupertinoButton(
                  child: Text("Decrement"),
                  onPressed: () {
                    _appstate.decrememt();
                  })
            ],
          ),
          SizedBox(
            height: 30,
          ),
          CupertinoButton(
              child: Text("Navigete to other"),
              onPressed: () {
                Navigator.of(context).push(
                    new MaterialPageRoute(builder: (context) => OtherScreen()));
              }),
        ],
      ),
    );
  }
}
