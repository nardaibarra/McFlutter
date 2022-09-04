// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _toggleTimer = true;
  bool _togglePerson = true;
  bool _toggleMobile = true;
  bool _togglePhone = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Mc Flutter'),
          centerTitle: false,
        ),
        body: Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.account_circle,
                    size: 50,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Flutter McFlutter", style: TextStyle(fontSize: 22)),
                      Text("Experienced App Developer",
                          style: TextStyle(fontSize: 12))
                    ],
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("123 Main Street", style: TextStyle(fontSize: 12)),
                    Text("(415) 555-0198", style: TextStyle(fontSize: 12))
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      color: _togglePerson ? Colors.black : Colors.indigo,
                      onPressed: () {
                        setState(() {
                          _togglePerson = !_togglePerson;
                        });
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(const SnackBar(
                              content:
                                  Text("Únete a un club con otras personas")));
                      },
                      icon: const Icon(Icons.person)),
                  IconButton(
                      color: _toggleTimer ? Colors.black : Colors.indigo,
                      icon: const Icon(Icons.timer),
                      onPressed: () {
                        setState(() {
                          _toggleTimer = !_toggleTimer;
                        });

                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(const SnackBar(
                              content: Text(
                                  "Cuenta regresiva para el evento: 31 días")));
                      }),
                  IconButton(
                      color: _togglePhone ? Colors.black : Colors.indigo,
                      onPressed: () {
                        setState(() {
                          _togglePhone = !_togglePhone;
                        });
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(const SnackBar(
                              content: Text("Llama al número 4155550198")));
                      },
                      icon: const Icon(Icons.phone)),
                  IconButton(
                      color: _toggleMobile ? Colors.black : Colors.indigo,
                      onPressed: () {
                        setState(() {
                          _toggleMobile = !_toggleMobile;
                        });
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(const SnackBar(
                              content: Text("Llama al celular 3317865113")));
                      },
                      icon: const Icon(Icons.phone_iphone_outlined))
                ],
              )
            ],
          ),
        ));
  }
}
