import 'dart:convert';

import 'package:example/home.dart';
import 'services/database.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:tesla/tesla.dart';

class Splash extends StatefulWidget {
  @override
  SplashState createState() {
    return SplashState();
  }
}

class SplashState extends State<Splash> {
  bool loading = false;
  final db = DatabaseService();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('Chargers into Database'),
              onPressed: loading
                  ? null
                  : () async {
                      try {
                        setState(() {
                          loading = true;
                        });
                        try {
                          List<Supercharger> _chargers = [];
                          final response = await http
                              .get('https://www.tesla.com/all-locations');
                          List<dynamic> _list =
                              List.from(json.decode(response.body));
                          for (var item in _list) {
                            _chargers.add(Supercharger(
                                null, json.decode(json.encode(item))));
                          }
                          await db.locationsDao.updateChargers(_chargers);
                          // await Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => HomeScreen(database: db),
                          //   ),
                          // );
                        } catch (e) {
                          print('Error => $e');
                        }
                        // await bloc.addFakePointsToDB(context);

                        setState(() {
                          loading = false;
                        });
                      } catch (e) {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return Material(
                              child: Column(
                                children: <Widget>[
                                  Text('Error'),
                                  Text(e.toString()),
                                ],
                              ),
                            );
                          },
                        );
                      }
                    },
            ),
            // RaisedButton(
            //   child: Text('Load Fake Data into Memory'),
            //   onPressed: loading
            //       ? null
            //       : () async {
            //           try {
            //             setState(() {
            //               loading = true;
            //             });
            //             final List<LatLngAndGeohash> list =
            //                 await bloc.getListOfLatLngAndGeohash(context);
            //             await Navigator.push(
            //               context,
            //               MaterialPageRoute(
            //                 builder: (context) => HomeScreen(list: list),
            //               ),
            //             );
            //             setState(() {
            //               loading = false;
            //             });
            //           } catch (e) {
            //             showDialog(
            //               context: context,
            //               builder: (context) {
            //                 return Column(
            //                   children: <Widget>[
            //                     Text('Error'),
            //                     Text(e.toString()),
            //                   ],
            //                 );
            //               },
            //             );
            //           }
            //         },
            // ),
            loading ? CircularProgressIndicator() : Container(),
          ],
        ),
      ),
    );
  }
}
