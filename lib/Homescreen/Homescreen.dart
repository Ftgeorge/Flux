// ignore_for_file: prefer_const_constructors

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flux/Composescreen/ComposeTextScreen.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              //Top contents
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 70, 10, 10),
                child: Row(
                  children: [
                    const Text(
                      'Flux',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(
                      width: 276,
                    ),
                    Icon(EvaIcons.search),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(EvaIcons.menu2),
                  ],
                ),
              ),
              //Tile
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (c) => ComposeText()));
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Container(
                    width: 350,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 190, 0),
                      child: Row(
                        children: [
                          Column(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Text(
                                'The Last Jihad',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
                                child: Text(
                                  '23rd Mar 2023',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                    color: Color.fromARGB(255, 213, 73, 30),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: Divider(
                  height: 1,
                  color: Color.fromARGB(255, 96, 95, 95),
                ),
              ),
              //Add button
              Padding(
                padding: const EdgeInsets.fromLTRB(330, 520, 10, 10),
                child: Container(
                  child: Icon(
                    EvaIcons.plusCircle,
                    color: Color.fromARGB(255, 213, 73, 30),
                    size: 30,
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
