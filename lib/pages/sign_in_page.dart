import 'package:app2/Icons/change_color.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  var colorIdx = 0;
  var iconIdx = 0;
  var iconIdx2 = 0;
  var iconIdx3 = 0;

  var colors = [
    Colors.cyan,
    Colors.redAccent,
    Colors.lightGreenAccent,
    Colors.yellow,
    Colors.grey,
    Colors.purpleAccent,
    Colors.teal,
    Colors.deepPurple,
    Colors.deepOrange,
  ];

  var icons = [
    Icons.apartment_outlined,
    Icons.app_blocking_rounded,
    Icons.access_alarm_rounded,
    Icons.backpack,
    Icons.backspace_rounded,
    Icons.accessibility,
    Icons.connect_without_contact_sharp,
    Icons.construction_sharp,
    Icons.add_a_photo,
    Icons.ac_unit_outlined
  ];

  var text = [
    'Apartment',
    'Blocking',
    'Alarm',
    'Backpack',
    'Backspace',
    'Accessibility',
    'Connect',
    'Construction',
    'Photo',
    'Aircon',
  ];

  var change = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo App 2',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Flutter layout demo'),
            backgroundColor: Colors.black87,
          ),
          body: buildContent(),
        ));
  }

  Widget buildContent() {
    return Container(
      color: colors[colorIdx],
      child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(children: [
              Icon(icons[(iconIdx)]),
              Container(
                child: Text(text[(iconIdx)]),
              ),
            ]),
            Column(children: [
              Icon(icons[(iconIdx2)]),
              Container(
                child: Text(text[(iconIdx2)]),
              ),
            ]),
            Column(children: [
              Icon(icons[(iconIdx3)]),
              Container(
                child: Text(text[(iconIdx3)]),
              ),
            ])
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(onPressed: _changeColor,
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                  // backgroundColor: Colors.teal,
                ),
                child: Column(children: [
                  Icon(
                    Icons.swap_horizontal_circle_outlined,
                    color: Colors.black,
                  ),
                  Text(
                    'Change Color',
                    style: TextStyle(color: Colors.black),
                  ),
                ])),
            TextButton(onPressed: _changeWidgets,
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                  // backgroundColor: Colors.teal,
                ),
                child: Column(children: [
                  Icon(
                    Icons.swap_calls,
                    color: Colors.black,
                  ),
                  Text(
                    'Change Widgets',
                    style: TextStyle(color: Colors.black),
                  ),
                ])),
          ],
        )
      ]),
    );
  }

  void _changeWidgets() {
    setState(() {
      var rng = Random();
      var cur = iconIdx;
      iconIdx = rng.nextInt(icons.length);
      iconIdx2 = rng.nextInt(icons.length);
      iconIdx3 = rng.nextInt(icons.length);
      // while(cur == iconIdx) {
      //   iconIdx = rng.nextInt(icons.length);
      // }
    });
  }

  void _changeColor() {
    setState(() {
      var rng = Random();
      var cur = colorIdx;
      while(cur == colorIdx) {
        colorIdx = rng.nextInt(colors.length);
      }
    });
  }


  Widget _buildList() {
    return ListView(
      children: [
        _tile('CineArts at the Empire', '85 W Portal Ave', Icons.theaters),
        _tile('The Castro Theater', '429 Castro St', Icons.theaters),
        _tile('Alamo Drafthouse Cinema', '2550 Mission St', Icons.theaters),
        _tile('Roxie Theater', '3117 16th St', Icons.theaters),
        _tile('United Artists Stonestown Twin', '501 Buckingham Way',
            Icons.theaters),
        _tile('AMC Metreon 16', '135 4th St #3000', Icons.theaters),
        const Divider(),
        _tile('K\'s Kitchen', '757 Monterey Blvd', Icons.restaurant),
        _tile('Emmy\'s Restaurant', '1923 Ocean Ave', Icons.restaurant),
        _tile('Chaiya Thai Restaurant', '272 Claremont Blvd', Icons.restaurant),
        _tile('La Ciccia', '291 30th St', Icons.restaurant),
      ],
    );
  }

  ListTile _tile(String title, String subtitle, IconData icon) {
    return ListTile(
      title: Text(title,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          )),
      subtitle: Text(subtitle),
      leading: Icon(
        icon,
        color: Colors.blue[500],
      ),
    );
  }
}

