import 'package:flutter/material.dart';
import 'package:aboutpaws/models/plant_display.dart';

class PlantCard extends StatelessWidget {
  final PlantDisplay _plantDisplay;

  const PlantCard(this._plantDisplay, {super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Card(
        color: const Color.fromRGBO(154, 109, 59, 1.0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(children: [
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Text(
                      "${_plantDisplay.title}",
                      style: const TextStyle(
                          fontSize: 32.0,
                          fontFamily: 'NunitoBold',
                          fontWeight: FontWeight.bold,
                          color: Color(0xffeeeeee)),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Text("Causes:",
                      style: TextStyle(
                          fontSize: 25.0,
                          fontFamily: 'NunitoMedium',
                          color: Color(0xffeeeeee))),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Text(
                        "${_plantDisplay.cause}",
                        style: const TextStyle(
                            fontSize: 16.0,
                            fontFamily: 'RobotoLight',
                            color: Color(0xffeeeeee)),
                        textAlign: TextAlign.center,
                      )),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
          ]),
        ),
      ),
    );
  }
}
