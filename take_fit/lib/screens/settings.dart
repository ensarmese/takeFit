// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import '../widgets/drawer.dart';


class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool swk=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ayarlar"),
      ),
      drawer: drawer(),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Row(
                    children: [
                      Column(children: [Text("Dark Mode"),],),
                      SizedBox(width: 200,),
                      Column(children: [Switch(value: swk, onChanged: (veri){
                        setState(() {
                          swk=veri;
                        });
                        print("switch durumu $swk");
                      })],),
                      
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),

      ),
    );
  }
}
