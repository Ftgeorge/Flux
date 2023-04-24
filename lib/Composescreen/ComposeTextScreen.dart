import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ComposeText extends StatefulWidget {
  const ComposeText({super.key});

  @override
  State<ComposeText> createState() => _ComposeTextState();
}

class _ComposeTextState extends State<ComposeText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 70, 10, 10),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios_new_outlined),
                    color: Colors.black,
                    iconSize: 20,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  const Text(
                    'New Note',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(
                    width: 210,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: const Icon(
                      EvaIcons.menu,
                    ),
                  )
                ],
              ),
            ),
            TextField(
              keyboardType: TextInputType.multiline,
              maxLines: 17,
              decoration: InputDecoration(
                hintText: 'Type your note',
              ),
            )
          ],
        ),
      ),
    );
  }
}
