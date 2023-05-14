import 'package:flutter/material.dart';
import 'package:connectivity/connectivity.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(SpeedTestApp());
}

class SpeedTestApp extends StatefulWidget {
  @override
  _SpeedTestAppState createState() => _SpeedTestAppState();
}

class _SpeedTestAppState extends State<SpeedTestApp> {
  Future<double?> testInternetSpeed() async {
    const url = 'https://www.google.com'; // replace with your own URL
    final connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult != ConnectivityResult.mobile &&
        connectivityResult != ConnectivityResult.wifi) {
      // no internet connection
      return null;
    }
    final stopwatch = Stopwatch()..start();
    final response = await http.get(Uri.parse(url));
    stopwatch.stop();
    final speed = response.contentLength! / stopwatch.elapsedMilliseconds * 1000;
    return speed; // speed in bytes per second
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Internet Speed Test'),
        ),
        body: FutureBuilder(
          future: testInternetSpeed(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final speed = snapshot.data;
              return Center(
                child: Column(
                  children: [
                    Text(
                      'Internet speed: ${speed!.toStringAsFixed(2)} bytes/s',
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ],
                ),
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text(
                  'Error: ${snapshot.error}',
                  style: TextStyle(fontSize: 24.0),
                ),
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}