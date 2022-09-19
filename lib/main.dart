import 'package:flutter/material.dart';
import 'package:weather_application/views.dart/additional_info.dart';
import 'package:weather_application/views.dart/current_weather.dart';

void main() {
  runApp(WeatherApp());
}

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homepage(),
    );
  }
}

class homepage extends StatefulWidget {
  @override
  State<homepage> createState() => _WeatherAppState();
}

class _WeatherAppState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf9f9f9),
      appBar: AppBar(
          title: Text(
            'Weather App',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
            ),
          ),
          backgroundColor: Color(0xFFf9f9f9),
          elevation: 0.0,
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          )),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          weather_app(Icons.wb_sunny_rounded, '37°C', 'Multan'),
          SizedBox(
            height: 15.0,
          ),
          Text(
            'Additional Information',
            style: TextStyle(fontSize: 25.0),
          ),
          Divider(),
          SizedBox(
            height: 10.0,
          ),
          additional_info("20", "2", "1014", "24.6")
        ],
      ),
    );
  }
}
