// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../widgets/drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("anasayfa"),
      ),
      drawer: drawer(),
      body:

      
      Container(
        decoration: BoxDecoration(color: Color(0xFFFFFFFF)),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: IgnorePointer(
                  
                  ignoring: false,
                  child: InkWell(
                    onTap: () {
                      print('Kcal Grafiği Tıklandı');
                    },
                    
                    child: Center(
                      
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          border: Border.all(
                            color: Color(0xFFB5F19B),
                            width: 10,
                          ),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        width: 200,
                        height: 200,
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'kcal',
                                style: TextStyle(fontSize: 30),
                              ),
                              Text(
                                '%70',
                                style: TextStyle(fontSize: 15),
                              ),
                              Text(
                                '3000/2236',
                                style: TextStyle(fontSize: 15),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              IgnorePointer(
                ignoring: false,
                child: InkWell(
                  onTap: () {
                    print('H₂O Grafiği Tıklandı');
                  },
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        border: Border.all(
                          color: Color(0xFF00B5FF),
                          width: 10,
                        ),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      width: 200,
                      height: 200,
                      padding: EdgeInsets.all(8.0),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'H₂O',
                              style: TextStyle(fontSize: 30),
                            ),
                            Text(
                              '%70',
                              style: TextStyle(fontSize: 15),
                            ),
                            Text(
                              '3000/2236',
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFBC5),
                    border: Border.all(
                      color: Color(0xFFFFFBC5),
                      width: 5,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Günlük adım hedefi:'),
                          SizedBox(width: 20),
                          Text('10.000/7553'),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Toplam antrenman süresi:'),
                          SizedBox(width: 20),
                          Text('54 dk'),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Toplam harcanan kalori:'),
                          SizedBox(width: 20),
                          Text('10.000/7553'),
                        ],
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFBC5),
                    border: Border.all(
                      color: Color(0xFFFFFBC5),
                      width: 5,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Günlük adım hedefi:'),
                          SizedBox(width: 20),
                          Text('10.000/7553'),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Toplam antrenman süresi:'),
                          SizedBox(width: 20),
                          Text('54 dk'),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Toplam harcanan kalori:'),
                          SizedBox(width: 20),
                          Text('10.000/7553'),
                        ],
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFBC5),
                    border: Border.all(
                      color: Color(0xFFFFFBC5),
                      width: 5,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Günlük adım hedefi:'),
                          SizedBox(width: 20),
                          Text('10.000/7553'),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Toplam antrenman süresi:'),
                          SizedBox(width: 20),
                          Text('54 dk'),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Toplam harcanan kalori:'),
                          SizedBox(width: 20),
                          Text('10.000/7553'),
                        ],
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
