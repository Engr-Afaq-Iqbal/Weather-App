import 'package:flutter/material.dart';

Widget weather_app(IconData icon, String temp, String location) {
  return Center(
    child: Column(
      children: [
        Icon(
          icon,
          size: 64.0,
          color: Colors.orange,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          "$temp",
          style: TextStyle(
            fontSize: 46.0,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          location,
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.grey,
          ),
        ),
      ],
    ),
  );
}
