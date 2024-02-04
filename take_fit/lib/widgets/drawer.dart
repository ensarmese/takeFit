// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';

import 'menu_item.dart';

class drawer extends StatelessWidget {
  const drawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        InkWell(
          onTap:() => Navigator.pushNamed(context, '/profile'),child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(children: [
              CircleAvatar(radius: 40,backgroundImage: NetworkImage("https://avatars.githubusercontent.com/u/48602486?v=4")),
              SizedBox(
                width: 25,
              ),
              Text("Ensar Meşe"),
              SizedBox(height: 100,)
            ]),
          ),
        ),
        Expanded(child: Column(
          children: [
            MenuItem(title: "Home Screen", icon: Icon(Icons.home), onTap: () => Navigator.pushNamed(context, '/home'),),
            MenuItem(title: "Training", icon: Icon(Icons.people), onTap: () => Navigator.pushNamed(context, '/training'),),
            MenuItem(title: "Nutrien Input", icon: Icon(Icons.fastfood), onTap: () => Navigator.pushNamed(context, '/nutrien'), ),
            MenuItem(title: "Water Tracking", icon: Icon(Icons.water_drop), onTap: () => Navigator.pushNamed(context, '/water'),),
            MenuItem(title: "About Us", icon: Icon(Icons.info), onTap: () => Navigator.pushNamed(context, '/aboutus'), ),
            MenuItem(title: "Settings", icon: Icon(Icons.settings), onTap: () => Navigator.pushNamed(context, '/settings'), ),
          ],
        )),
        MenuItem( icon: Icon(Icons.logout),onTap: (){Navigator.pushNamedAndRemoveUntil(context, "/login", (route) => false);},title: "LogOut",),
        SizedBox(
          height: 20,
        ),
      ]),
    );
  }
}

