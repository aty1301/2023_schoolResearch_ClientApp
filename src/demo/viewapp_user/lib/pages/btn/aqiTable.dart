// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, library_private_types_in_public_api, non_constant_identifier_names, prefer_interpolation_to_compose_strings, avoid_print, camel_case_types, must_be_immutable, file_names, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:viewapp_user/pages/out/news.dart';
import 'package:viewapp_user/pages/table/api_aqi.dart';

class aqiTablePage extends StatelessWidget {
  const aqiTablePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.blue, backgroundColor: Colors.white),
      ),
      home: Scaffold(
        body: crdata(),
      ),
    );
  }
}

class crdata extends StatelessWidget {
  const crdata({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[SizedBox(height: 10.0), DataAQI()]);
  }
}

class DataAQI extends StatelessWidget {
  const DataAQI({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("AQI",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              SizedBox(width: 10),
            ]),
        Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("資料來源： 行政院環境保護部(署)",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            ]),
        Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [table_aqi()]),
        SizedBox(height: 10),
        btnGoBack(),
      ],
    ));
  }
}

class table_aqi extends StatelessWidget {
  const table_aqi({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AqiTable(),
      ],
    );
  }
}

class btnGoBack extends StatelessWidget {
  const btnGoBack({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => NewsData()));
      },
      child: const Text('Go Back'),
      style: ElevatedButton.styleFrom(minimumSize: const Size(100, 80)),
    );
  }
}
